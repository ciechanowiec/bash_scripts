#!/bin/bash

# This script prints random number within the given range

if [ $# != 2 ]
then
	echo Illegal number of arguments. Two arguments are required \(lower ang higher range limit\)
	exit
fi	

if [ $1 -gt $2 ]
then
	echo The lower bound cannot be grater than the higher bound
	exit
fi

shuf -i $1-$2 -n 1

