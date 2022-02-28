#!/bin/bash

# This script shows the number of directories in a given directory 
# and recursively in all its subdirectories

if [ $# = 0 ]
then
	numOfDirs=`find . -mindepth 1 -type d | wc -l`
	echo The number of directories in the given directory and all its subdirectories: $numOfDirs
	exit
fi

if [ $# = 1 ]
then
	numOfDirs=`find $1 -mindepth 1 -type d | wc -l`
	echo The number of directories in the given directory and all its subdirectories: $numOfDirs
	exit
fi

echo You have provided a prohibited amount of arguments. Only 1 or none are allowed.

