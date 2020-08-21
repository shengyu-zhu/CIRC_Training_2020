#!/usr/bin/python3
# this file executes all the code in this data
import subprocess
import datetime
import os
import shutil

datetime.datetime.now()
# eliminate the generated content by the code
RemovePathList = ['../temp','../output','../researchLog/ResearchLog_cache']
for file_path in RemovePathList:
	if os.path.exists(file_path):
		shutil.rmtree(file_path)

# create the empty folders
NewPathList = RemovePathList + ['../output/figure', '../output/codeMarkdown']
for file_path in NewPathList:
	if not os.path.exists(file_path):
		os.makedirs(file_path)

# for temporary RDS storage
# shutil.rmtree('../RDStemp')
# os.makedirs('../RDStemp')

subprocess.run(["ls", "-l"])
subprocess.run(["Rscript", "Rmarkdown.R"])
subprocess.run(["stata", "-b", "do", "StataCode.do"])
shutil.move("StataCode.log", "../output/StataCode.log")

# os.chdir('../researchLog')
# subprocess.run(["xelatex", "ResearchLog.tex"])
