# connect to BlueHive: SSH (Secure Shell)
ssh username@ssh.server.com
#(see the internal version for this line)

# Switch to compute node
interactive -c 4 --mem=8G

# Using command line to run R
module load r/3.5.1
R

# change directory
cd ~
cd ../../scratch/YOURNETID/CIRC_workshop/LearningCode

# Use Python to create file folders
module load python3
python3 CreateProjectFolders.py

# R CMD
R CMD BATCH hello.R
# R CMD BATCH with arguments
R CMD BATCH "--args 7 8" FactorialWithArguments.R

# Rscript
Rscript -e 'source("hello.R")'
Rscript hello.R > outputFile.Rout 2> errorFile.Rout

Rscript -e "source('Rmarkdown.R')"

Rscript FactorialWithArguments.R 7 8

# Python
module load python3
python3 CreateProjectFolders.py

# stata
module load stata/15
stata < StataCode.do > StataCode.log

# latex
cd ../ToyProject/Paper
module load texlive/2016
pdflatex texintro.tex
pdflatex texintro.tex

# bash script
bash hello.sh
bash BashWithArgument.sh YOURNAME
bash BashFlexibleArgument.sh Shengyu A B C

chmod u+x hello.sh
sed -i -e 's/\r$//' hello.sh
./hello.sh

chmod u+x hello.R
sed -i -e 's/\r$//' hello.R
./hello.R

## Slurm
# Submit a job
sed -i -e 's/\r$//' SLURMExample1.sh
sbatch SLURMExample1.sh

squeue -u YOURNETID
job-info
sacct -j JOBID --format=JobID,Jobname,state,time,elapsed,reqmem,MaxRss,averss,nnodes,ncpus
sacct -e

scancel JobId
squeue -p simonx
sinfo -s
scontrol show job JOBID

# job arrays
sbatch JobArray1.sh
sbatch JobArraryLoop.sh

# for toy project
cd ~
cd ../../scratch/YOURNETID/repos/

module load git/2.14.1
git clone git@bitbucket.org:shengyu-zhu/diamondproject.git

cd ~
cd ../../scratch/YOURNETID/repos/diamondproject/DataClean/code/
module load python3
module load r/3.5.1
module load texlive/2016
module load stata/15
python3 rundirectory.py

cd ~
cd ../../scratch/YOURNETID/repos/diamondproject/
sbatch BluehiveJob.sh
squeue -u YOURNETID

# after all code testing, delete all files since last commit, in order to sync with the office desktop
git reset --hard
git branch
git status
git pull

git add --all
git branch
git status
git commit -m "BlueHive finished"
git push