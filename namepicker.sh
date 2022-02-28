#!/bin/bash

# This script allows the user to pick up a name and then greets him using the chosen name

names='Antony Mark Ann Quit'

PS3='Select a name: '

select name in $names
do
	if [ $name = Quit ]
	then
		echo Bye!
		break
	else 
		echo Hello, $name!
	fi
done


