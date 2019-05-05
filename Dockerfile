FROM msaidf/r0-python:3.6.0
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

RUN install2.r data.table dtplyr dbplyr DBI odbc pool tidypredict dbplot bigrquery MonetDBLite RMariaDB RPostgreSQL RSQLite mongolite redux storr filehash tidyjson tsbox tidyquant xts zoo rlist cem pryr glue prophet promises profvis synchronicity remotes jsonlite XML rvest xml2 httr janitor rio 

RUN install2.r gganimate ggplotgui gridExtra ggrepel rbokeh dygraphs GGally ggthemes ggfortify plotly rCharts ggvis timevis highcharter wordcloud2 ggmap tmap leaflet

