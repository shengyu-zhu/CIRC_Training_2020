#!/bin/bash
##SBATCH -p debug
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=4G
#SBATCH --ntasks-per-node=1
#SBATCH -t 00:05:00
#SBATCH -J r_test
#SBATCH -e BluehiveJob.err
#SBATCH -o BluehiveJob.out
#SBATCH --mail-type=END
#SBATCH --mail-user=shengyu.zhu@simon.rochester.edu

cd ~
cd ../../scratch/szhu11/repos/diamondproject/
module load r/3.5.1
module load python3
module load texlive
module load stata/15
python3 RunProject.py