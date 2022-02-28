#!/bin/bash

# This script shows parity status of numbers in a range from 10 to 50

for num in {10..50}
do
	modulo=$(( $num % 2 ))
	if [ $modulo -eq 0 ]
	then
		echo $num: even
	elif [ ! $modulo -eq 0 ]
	then
		echo $num: odd
	fi
done

