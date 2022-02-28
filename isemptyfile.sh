#!/bin/bash

# This script prints checks whether the given file is empty

if [ $# != 1 ]
then
	echo Illegal number of arguments. Only one argument is allowed
	exit
fi

file=$1

if [ ! -f $file ]
then
	echo The file doesn\'t seem to exist
elif [ -s $file ]
then
	echo The file has content
elif [ ! -s $file ]
then
	echo The file is empty
fi

