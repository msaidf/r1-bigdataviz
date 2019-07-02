FROM msaidf/r0-extension:latest
MAINTAINER "Muhamad Said Fathurrohman" muh.said@gmail.com

USER root

RUN install2.r dbplyr DBI odbc pool dbplot MonetDBLite RMariaDB RPostgreSQL RSQLite mongolite redux storr filehash

RUN install2.r promises futures profvis remotes XML xml2 httr rvest plumber DesignLibrary

RUN install2.r synchronicity bigmemory biganalytics bigalgebra biglm bigrquery speedglm 

RUN install2.r gganimate ggrepel rbokeh dygraphs GGally ggthemes ggfortify rCharts ggvis timevis highcharter wordcloud2 ggmap tmap leaflet prettyB 

RUN install2.r tm tidytext twitteR gtrendsR koRpus udpipe tensorflow h2o sparklyr tabulizerjars tabulizer

RUN install2.r survival Matching MatchIt cem Amelia mcmc MCMCpack tidybayes shinystan CausalImpact

RUN install2.r nleqslv compareDF RcppArmadillo FKS KFAS

RUN install2.r data.world tradestatistics blscrapeR rdhs countrycode WDI wbstats eurostat OECD pdfetch psData IMFData LabourMarketAreas bea.R

RUN installGithub.r ChristopherLucas/MatchingFrontier kthohr/BMR kolesarm/RDHonest ropensci/rnoaa CommerceDataService/eu.us.opendata jcizel/FredR mwaldstein/edgarWebR abresler/forbesListR sboysel/fredr 
 
RUN installGithub.r ropensci/cyphr ropensci/googleLanguageR ropensci/binman ropensci/wdman ropensci/RSelenium ropensci/arkdb

RUN installGithub.r hrbrmstr/hrbrthemes hrbrmstr/ggalt rstudio/r2d3 kosukeimai/fastLink JohnCoene/echarts4r cttobin/ggthemr yihui/printr mkearney/rmd2jupyter r-lib/fs muschellij2/diffr ropensci/crul

RUN wget http://gecon.r-forge.r-project.org/files/gEcon_1.1.0.tar.gz && \
	R CMD INSTALL gEcon_1.1.0.tar.gz && \
	wget http://gecon.r-forge.r-project.org/files/gEcon.iosam_0.2.0.tar.gz && \
	R CMD INSTALL gEcon.iosam_0.2.0.tar.gz && \
	wget http://gecon.r-forge.r-project.org/files/gEcon.estimation_0.1.0.tar.gz && \
	R CMD INSTALL gEcon.estimation_0.1.0.tar.gz
