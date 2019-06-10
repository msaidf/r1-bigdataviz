FROM msaidf/r0-extension:r-3.6.0
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

USER root

RUN install2.r dbplyr DBI odbc pool dbplot MonetDBLite RMariaDB RPostgreSQL RSQLite mongolite redux storr filehash 

RUN install2.r promises futures profvis remotes XML xml2 httr rvest plumber

RUN install2.r synchronicity bigmemory biganalytics bigalgebra biglm bigrquery speedglm 

RUN install2.r gganimate ggrepel rbokeh dygraphs GGally ggthemes ggfortify rCharts ggvis timevis highcharter wordcloud2 ggmap tmap leaflet

RUN installGithub.r hrbrmstr/hrbrthemes hrbrmstr/ggalt rstudio/r2d3 kosukeimai/fastLink JohnCoene/echarts4r cttobin/ggthemr yihui/printr mkearney/rmd2jupyter michaelmalick/r-malick rorynolan/strex r-lib/fs muschellij2/diffr ropensci/drake ropensci/crul
