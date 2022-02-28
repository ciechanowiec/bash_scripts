#!/bin/bash

# This script takes a filename as its first argument and creates a dated copy of the file. 
# Eg. if the file was named file1.txt, the script would create a copy such as 2022-02-27_file1.txt.

if [ $# != 1 ]
then
	echo Illegal number of arguments provided. Only 1 \(the file name\) is allowed
	exit
fi

file=$1
if [ ! -f $file ]
then
	echo The requested file seems not to exist
	exit
fi

date=`date +%F`
newFile=$date\_$1
mv $file $newFile

echo The file has been renamed. Current name: $newFile
