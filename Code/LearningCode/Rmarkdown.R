install.packages('rmarkdown', repos = 'https://cran.revolutionanalytics.com')
#Sys.getenv("RSTUDIO_PANDOC")
SystemsInfo <- Sys.info()['sysname']
if(unname(SystemsInfo)=="Windows") Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")
if(unname(SystemsInfo)=="Linux") Sys.setenv(RSTUDIO_PANDOC="/gpfs/fs1/sfw2/rstudio/1.1.456/usr/lib/rstudio/bin/pandoc")
library('rmarkdown')
render('RMarkdown_Diamond.rmd')
render('hello.R')