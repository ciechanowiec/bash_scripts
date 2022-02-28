#!/bin/bash

# This script shows statistics on the given folder

if [ $# != 1 ]
then
	echo Illegal number of arguments. One argument \(the directory path\) is required.
	exit
fi

if [ ! -d $1 ]
then
	echo Invalid argument. Pass an existing directory
	exit
fi

for file in $1/*
do
	if [ -d $file ]
	then
		dirsinside=`find $file -mindepth 1 -maxdepth 1 -type d | wc -l`
		filesinside=`find $file -mindepth 1 -maxdepth 1 -type f | wc -l`
		echo $file \| type: directory \| directories inside: $dirsinside \| files indise: $filesinside
	elif [ -e $file ]
	then
		size=`ls -l $file | awk '{print $5}'`
		echo $file \| type: file \| size: $size
	fi
done


