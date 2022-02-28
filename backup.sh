#!/bin/bash

# This script creates project backups. The script requires two folders: ~/Projects & ~/Backups

# If the  number of provided arguments != 1
if [ $# != 1 ]
then
	echo Provide a single argument which is the directory to backup
	exit 
fi

# If the given directory doesn't exist
if [ ! -d ~/Projects/$1 ]
then 
	echo The given directory doesn\'t seem to exist
	exit
fi

# Handle situation when the backup for a given day already exists
date=`date +%F`
if [ -d ~/Backups/$1_$date ]
then
	echo The backup of the given project has already been created today, overwrite?
	read answer
	if [ $answer != 'y' ]
	then
		exit
	fi
else
	mkdir ~/Backups/$1_$date
fi

# Create a backup
cp -R ~/Projects/$1 ~/Backups/$1_$date
echo Backup of $1 completed
		

