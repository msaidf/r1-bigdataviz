FROM rocker/r-ver:3.4.2

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
	libxml2-dev \
  	libcairo2-dev \
  	libsqlite3-dev \
  	libmariadbd-dev \
  	libmariadb-client-lgpl-dev \
  	libpq-dev \
  	libssh2-1-dev \
  	unixodbc-dev 

RUN R -e "source('https://bioconductor.org/biocLite.R')" 

RUN install2.r --error --deps TRUE tidyverse 
RUN install2.r --error --deps TRUE dplyr 
RUN install2.r --error --deps TRUE ggplot2 
RUN install2.r --error --deps TRUE devtools 
RUN install2.r --error --deps TRUE formatR 
RUN install2.r --error --deps TRUE remotes 
RUN install2.r --error --deps TRUE selectr 
RUN install2.r --error --deps TRUE caTools 
RUN install2.r --error --deps TRUE filehash 
RUN install2.r --error --deps TRUE pbapply 
RUN install2.r --error --deps TRUE doRedis 
RUN install2.r --error --deps TRUE rlist 
RUN install2.r --error --deps TRUE stargazer 
RUN install2.r --error --deps TRUE texreg 
RUN install2.r --error --deps TRUE DescTools 
RUN install2.r --error --deps TRUE descr 
RUN install2.r --error --deps TRUE janitor 
RUN install2.r --error --deps TRUE rio 
RUN install2.r --error --deps TRUE compareGroups 
RUN install2.r --error --deps TRUE sjPlot 
RUN install2.r --error --deps TRUE sjmisc 
RUN install2.r --error --deps TRUE tidyjson 
RUN install2.r --error --deps TRUE qwrap2 
RUN install2.r --error --deps TRUE desctable 
RUN install2.r --error --deps TRUE tableone 
RUN install2.r --error --deps TRUE rdrobust 
RUN install2.r --error --deps TRUE rdlocrand 
RUN install2.r --error --deps TRUE rddensity 
RUN install2.r --error --deps TRUE rdd 
RUN install2.r --error --deps TRUE rddtools 
RUN install2.r --error --deps TRUE ClubSandwich 
RUN install2.r --error --deps TRUE multiwayvcov 
RUN install2.r --error --deps TRUE lfe 
RUN install2.r --error --deps TRUE survival 
RUN install2.r --error --deps TRUE gganimate 
RUN install2.r --error --deps TRUE ggplotgui 
RUN install2.r --error --deps TRUE hrbrthemes 
RUN install2.r --error --deps TRUE gridExtra 
RUN install2.r --error --deps TRUE ggrepel 
RUN install2.r --error --deps TRUE rbokeh 
RUN install2.r --error --deps TRUE echarts4r 
RUN install2.r --error --deps TRUE dygraphs 
RUN install2.r --error --deps TRUE sparklyr 
RUN install2.r --error --deps TRUE plumber
