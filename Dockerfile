FROM msaidf/r0-python:latest
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

RUN install2.r dbplyr DBI odbc pool dbplot MonetDBLite RMariaDB RPostgreSQL RSQLite mongolite redux storr filehash 

RUN install2.r promises futures profvis remotes XML xml2 httr rvest plumber

RUN install2.r synchronicity bigmemory biganalytics bigalgebra biglm bigrquery speedglm 

RUN install2.r gganimate ggrepel rbokeh dygraphs GGally ggthemes ggfortify rCharts ggvis timevis highcharter wordcloud2 ggmap tmap leaflet

