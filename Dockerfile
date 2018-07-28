FROM rocker/r-ver:3.5.1

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
RUN install2.r --error --deps TRUE \
    tidyverse \
    dplyr \
    ggplot2 \
    devtools \
    formatR \
    remotes \
    selectr \
    caTools \
	filehash \
	pbapply \
	doRedis \
	rlist \
	stargazer \
	texreg \
	DescTools \
	descr \
	jjanitor \
	rio \
	compareGroups \
	sjPlot \
	sjmisc \
	tidyjson \
	qwrap2 \
	desctable \
	tableone \
	irdd \
	rdrobust \
	rdlocrand \
	rddensity \
	rddtools \
	ClubSandwich \
	multiwayvcov \
	lfe \
	survival \
	gganimate \
	ggplotgui \
	hrbrthemes \
	gridExtra \
	ggrepel \
	rbokeh \
	echarts4r \
	dygraphs \
	sparklyr \
	plumber
