# This script install all needed packages

rm(list = ls()); gc()

list.of.packages <- c("ggplot2", "rmarkdown", "tictoc", "rmdformats")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, repos='http://cran.us.r-project.org')