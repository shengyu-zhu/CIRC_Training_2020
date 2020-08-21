#Sys.getenv("RSTUDIO_PANDOC")
SystemsInfo <- Sys.info()['sysname']
if(unname(SystemsInfo)=="Windows") Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")
if(unname(SystemsInfo)=="Linux") Sys.setenv(RSTUDIO_PANDOC="/gpfs/fs1/sfw2/rstudio/1.1.456/usr/lib/rstudio/bin/pandoc")
library('rmarkdown')
render('PackageCheckingInstall.R',output_dir="../output/codeMarkdown/")
render('DiamondsDemo.Rmd',output_dir="../output/codeMarkdown/")
render('../researchLog/ResearchLog.Rmd',output_dir="../researchLog/")