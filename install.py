import os
import shutil
import re
import os.path
from os import path as pth

def appended_path(file_path):
  if file_path.endswith('/'):
  	return file_path[:-1]
  else:
  	return file_path



# copy subdirectory example
matcher = "^(.)*flutter(.)*\/bin(\/)?$"
scripts_dir="scripts"
build_runner="build_runner.dart"
cache_files =['/cache/flutter_tools.snapshot','/cache/flutter_tools.stamp']
flutter_tool_path="../packages/flutter_tools/lib/src/build_runner"

paths = os.environ['PATH'].split(':')
for path in paths:
	if re.match(matcher, path.lower()):
		prefix = appended_path(path)
		print("*****Clearing Cache******")
		for file in cache_files:
			file_name = prefix+file
			if pth.exists(file_name):
				os.remove(file_name)
		print("*****Replacing Builder******")
		shutil.move(os.path.join(scripts_dir, build_runner), os.path.join(prefix+"/"+flutter_tool_path, build_runner))







 

'''
paths= [path1, path2]

targets = list()
for x in paths:
	matched_paths= glob.glob(x)
	for y in matched_paths:
		target=y+"/"+fromDirectory
		copy_tree(fromDirectory, target)
		targets.append(target)

print "Installed in",len(targets),"locations."
print "******************Locations***************\n"
print("\n".join(targets)) 
print "\n******************************************"
'''