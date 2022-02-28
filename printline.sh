#!/bin/bash

# This script prints a certain line from a file taken from STDIN

if [ $# != 1 ]
then
	echo Illegal number of arguments. Only 1 \(line number\) is allowed
	exit
fi

line=`sed -n $1p /dev/stdin`
lineLength=`echo $line | wc -L`

if [ $lineLength = 0 ]
then
	echo The requested line doesn\'t exist
	exit
fi

echo $line
