#!/bin/bash

# This script searches for a file in a given directory

echo Welcome to File Searcher!
read -p 'Directory to search in: ' directory
read -p 'File to search for: ' file

if [ ! -d $directory ]
then
	echo The given directory doesn\'t seem to exist
	exit
fi

result=`find $directory -mindepth 1 -printf "%f\n" | egrep $file | wc -l`
echo

if [ $result = 0 ]
then
	echo Nothing found
else 	
	echo Here are your results:
	find $directory -mindepth 1 -printf "%f\n" | egrep $file
fi
