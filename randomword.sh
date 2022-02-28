#!/bin/bash

# This script shows a randomly chosen word from standard Linux dictionary. 
# The user may specify the amount of letters for the word to be shown.

dictionary=/usr/share/dict/words

if [ $# -gt 1 ]
then
	echo You have provided illegal number of arguments. Only 1 or none is allowed
	exit
fi

if [ $# = 0 ]
then
	result=`cat $dictionary | shuf | head -1`
	echo Your random word: $result
	exit
fi

if [ $# = 1 ]
then
	result=`cat $dictionary | shuf | egrep ^.{$1}$ | head -1`
	numOfFoundWords=`echo $result | wc -L`
	if [ $numOfFoundWords -eq 0 ]
	then
		echo The program hasn\'t found any word which has the requested length
		exit
	fi
	echo Your random word: $result
fi
