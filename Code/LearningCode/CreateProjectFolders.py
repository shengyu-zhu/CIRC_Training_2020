#!/usr/bin/python3
import subprocess
import datetime
import os

datetime.datetime.now()
# create the empty folders
NewPathList = ['./DataClean','./Paper','./RawData','./Slides',
'./DataClean/code','./DataClean/output','./DataClean/researchLog','./DataClean/temp',
'./DataClean/output/figure','./DataClean/output/codeMarkdown']
for file_path in NewPathList:
	if not os.path.exists(file_path):
		os.makedirs(file_path)