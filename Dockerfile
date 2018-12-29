FROM msaidf/rstudio-python
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

RUN install2.r data.table dtplyr dbplyr DBI odbc pool tidypredict dbplot bigrquery MonetDBLite RMariaDB RPostgreSQL RSQLite mongolite redux storr filehash tidyjson tsbox tidyquant xts zoo rlist cem pryr glue prophet promises profvis synchronicity remotes jsonlite XML rvest xml2 httr janitor rio 

RUN install2.r gganimate ggplotgui gridExtra ggrepel rbokeh dygraphs GGally ggthemes ggfortify plotly rCharts ggvis timevis highcharter wordcloud2 ggmap tmap leaflet

RUN install2.r rdrobust rdlocrand rddensity rdmulti rdpower rdd rddtools ClubSandwich multiwayvcov lfe survival Matching MatchIt Amelia mcmc MCMCpack wfe CausalImpact 

RUN install2.r tm tidytext twitteR gtrendsR koRpus udpipe tensorflow h2o sparklyr

RUN install2.r foreach pbapply doMC doRedis bigmemory biganalytics bigalgebra biglm speedglm 

RUN install2.r reticulate rdrop2 JuliaCall googledrive googleway googlesheets 

RUN install2.r shiny pkgdown blogdown revealjs prettydoc learnr xaringan flexdashboard shinydashboard tufte formattable plumber 

RUN install2.r moonBook reporttools stargazer texreg DescTools descr compareGroups sjPlot sjmisc qwrap2 desctable tableone 

RUN installGithub.r ChristopherLucas/MatchingFrontier hrbrmstr/hrbrthemes hrbrmstr/ggalt rstudio/r2d3 kthohr/BMR kosukeimai/fastLink JohnCoene/echarts4r cttobin/ggthemr yihui/printr mkearney/rmd2jupyter michaelmalick/r-malick rorynolan/strex r-lib/fs kolesarm/RDHonest muschellij2/diffr

RUN installGithub.r ropensci/cyphr ropensci/googleLanguageR ropensci/binman ropensci/wdman ropensci/RSelenium ropensci/arkdb ropensci/skimr ropensci/fulltext 

RUN install2.r data.world blscrapeR pollstR countrycode WDI wbstats eurostat OECD pdfetch psData tidycensus IMFData LabourMarketAreas 

RUN installGithub.r ropensci/rnoaa CommerceDataService/eu.us.opendata mnpopcenter/ipumsr hrecht/censusapi jcizel/FredR mwaldstein/edgarWebR us-bea/bea.R abresler/forbesListR sboysel/fredr 

USER ${NB_USER}
