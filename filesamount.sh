#!/bin/bash

# This script shows the number of files in a given 
# directory and recursively in all its subdirectories

if [ $# = 0 ]
then
	numOfFiles=`find . -type f | wc -l`	
	echo The number of files in the given directory and all its subdirectories: $numOfFiles
	exit
fi

if [ $# = 1 ]	
then	
	numOfFiles=`find $1 -type f | wc -l`	
	echo The number of files in the given directory and all its subdirectories: $numOfFiles
	exit
fi

echo You have provided a prohibited amount of arguments. Only 1 or none are allowed.
