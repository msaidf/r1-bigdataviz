FROM msaidf/r0-extension:latest
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

USER root

RUN install2.r dbplyr DBI odbc pool dbplot MonetDBLite RMariaDB RPostgreSQL RSQLite mongolite redux storr filehash

RUN install2.r promises futures profvis remotes XML xml2 httr rvest plumber

RUN install2.r synchronicity bigmemory biganalytics bigalgebra biglm bigrquery speedglm 

RUN install2.r gganimate ggrepel rbokeh dygraphs GGally ggthemes ggfortify rCharts ggvis timevis highcharter wordcloud2 ggmap tmap leaflet

RUN install2.r tm tidytext twitteR gtrendsR koRpus udpipe tensorflow h2o sparklyr tabulizerjars tabulizer

RUN install2.r survival Matching MatchIt cem Amelia mcmc MCMCpack tidybayes shinystan CausalImpact

RUN install2.r data.world tradestatistics blscrapeR pollstR countrycode WDI wbstats eurostat OECD pdfetch psData IMFData LabourMarketAreas bea.R

RUN installGithub.r ChristopherLucas/MatchingFrontier kthohr/BMR kolesarm/RDHonest ropensci/rnoaa CommerceDataService/eu.us.opendata jcizel/FredR mwaldstein/edgarWebR abresler/forbesListR sboysel/fredr 
 
RUN installGithub.r ropensci/cyphr ropensci/googleLanguageR ropensci/binman ropensci/wdman ropensci/RSelenium ropensci/arkdb ropensci/drake

RUN installGithub.r hrbrmstr/hrbrthemes hrbrmstr/ggalt rstudio/r2d3 kosukeimai/fastLink JohnCoene/echarts4r cttobin/ggthemr yihui/printr mkearney/rmd2jupyter michaelmalick/r-malick rorynolan/strex r-lib/fs muschellij2/diffr ropensci/drake ropensci/crul
