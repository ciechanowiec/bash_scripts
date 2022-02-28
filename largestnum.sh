#!/bin/bash

# This script prints the largest of two provided numbers

if [ $# != 2 ]
then
	echo Illegal number of arguments. Two are required
	exit
fi

num1=$1
num2=$2

if [ $num1 -gt $num2 ]
then
	echo The largest provided number is $num1
elif [ $num1 -lt $num2 ]
then
	echo The largest provided number is $num2
elif [ $num1 -eq $num2 ]
then
	echo Both provided numbers are equal
fi
