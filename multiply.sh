#!/bin/bash

# This script makes a simple multiplication

if [ $# != 2 ]
then
	echo Illegal number of arguments provided. Two required
	exit
fi

product=$(($1 * $2))

echo $1 \* $2 = $product

