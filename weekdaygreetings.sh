#!/bin/bash

# This script prints original greetings message for every weekday

weekday=`date +%A`

case $weekday in
	Monday)
		echo Hola on Monday!
		;;
	Tuesday)
		echo Glad to meet you on Tuesday!
		;;
	Wednesday)
		echo What\'s up on Wednesday?
		;;
	Thursday)
		echo Remember to smile on Thursdays!
		;;
	Friday)
		echo Start a great weekend this Friday!
		;;
	Saturday)
		echo Bonjourno on Saturday!
		;;
	Sunday)
		echo Let\'s be happy on Sunday!
		;;
	*)
		echo Unknown day
		;;
esac



