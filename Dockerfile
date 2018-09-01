FROM rocker/tidyverse:3.5.1

RUN install2.r remotes selectr caTools filehash pbapply doRedis rlist stargazer texreg DescTools descr janitor rio compareGroups sjPlot sjmisc tidyjson qwrap2 desctable tableone rdrobust rdlocrand rddensity rdd rddtools ClubSandwich multiwayvcov lfe survival gganimate ggplotgui hrbrthemes gridExtra ggrepel rbokeh echarts4r dygraphs sparklyr plumber 
RUN install2.r tsbox tidyquant xts zoo