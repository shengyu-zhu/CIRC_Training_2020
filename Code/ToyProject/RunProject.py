#!/usr/bin/python3
# this file executes all the code in this data
import subprocess
import datetime
import os
import shutil

datetime.datetime.now()

RemoveFileList = ['../Slides/demo.pdf']
for file_path in RemoveFileList:
	if os.path.isfile(file_path):
		os.unlink(file_path)

RemoveFileList = ['../Paper/texintro.pdf']
for file_path in RemoveFileList:
	if os.path.isfile(file_path):
		os.unlink(file_path)

subprocess.run(["ls", "-l"])
os.chdir('./DataClean/code/')
subprocess.run(["python3", "rundirectory.py"])
os.getcwd()
os.chdir('../../Paper')
subprocess.run(["xelatex", "texintro.tex"])
subprocess.run(["xelatex", "texintro.tex"])
os.chdir('../Slides')
subprocess.run(["xelatex", "demo.tex"])
subprocess.run(["xelatex", "demo.tex"])