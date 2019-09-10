FROM msaidf/r0-extension:r-3.5.3
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

ENV NB_USER rstudio
ENV NB_UID 1000
ENV VENV_DIR /srv/venv

# Set ENV for all programs...
ENV PATH ${VENV_DIR}/bin:$PATH
# And set ENV for R! It doesn't read from the environment...
RUN echo "PATH=${PATH}" >> /usr/local/lib/R/etc/Renviron

# The `rsession` binary that is called by nbrsessionproxy to start R doesn't seem to start
# without this being explicitly set
ENV LD_LIBRARY_PATH /usr/local/lib/R/lib

# Create a venv dir owned by unprivileged user & set up notebook in it
# This allows non-root to install python libraries if required
RUN mkdir -p ${VENV_DIR} && chown -R ${NB_USER} ${VENV_DIR}

RUN apt-get update && \
    apt-get -y install python3-venv python3-dev octave dynare && \
    apt-get purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV HOME /home/${NB_USER}
ENV JULIA_DIR ${HOME}/juliavm
USER ${NB_USER}
WORKDIR ${HOME}

RUN python3 -m venv ${VENV_DIR} && \
    # Explicitly install a new enough version of pip
    pip3 install pip && \
    pip3 install --no-cache-dir \
         nbrsessionproxy && \
    jupyter serverextension enable --sys-prefix --py nbrsessionproxy && \
    jupyter nbextension install    --sys-prefix --py nbrsessionproxy && \
    jupyter nbextension enable     --sys-prefix --py nbrsessionproxy

RUN R --quiet -e "devtools::install_github('IRkernel/IRkernel')" && \
    R --quiet -e "IRkernel::installspec(prefix='${VENV_DIR}')"

RUN pip3 install --no-cache-dir octave_kernel nbconvert RISE nbdime jupyter_nbextensions_configurator jupyter_contrib_nbextensions && \
    nbdime config-git --enable --global && \
    jupyter contrib nbextension install && \
    jupyter nbextensions_configurator enable

RUN git clone https://github.com/pmargreff/juliavm

WORKDIR ${JULIA_DIR} 
RUN chmod u+x install.sh && ./install.sh 

WORKDIR ${HOME}
ENV PATH ${JULIA_DIR}:$PATH
RUN juliavm install 1.2.0 && \
    juliavm install 0.7.0 && \
    juliavm use 0.7.0
    
RUN julia -e "using Pkg" \
          -e "Pkg.add("IJulia") \
          -e "using IJulia"

CMD jupyter notebook --ip 0.0.0.0

## If extending this image, remember to switch back to USER root to apt-get
