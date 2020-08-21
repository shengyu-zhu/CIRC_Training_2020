#!/bin/bash
#SBATCH --partition=debug  --time=00:01:00  --output=SLURMExample.log
# a compute node in the debug partition
# For one minute
# print out the output to SLURMExample.log
#SBATCH --job-name=CIRC_Simon # you can specify more optionss
date
hostname
module load r/3.5.1
Rscript Rmarkdown.R