#!/bin/bash

# This script gets from a user login credentials

if [ $# -gt 1 ]
then
	echo Illegal number of arguments. Only 1 or none is allowed
	exit
fi

if [ $# = 0 ]
then
	echo Provide your credentials to log in:
fi

if [ $# = 1 ]
then
	echo Provide your credentials to log into $1 system:
fi

read -p 'Username: ' username
read -sp 'Password: ' password

echo
echo ==============================================
echo Hello, $username. You have successfuly logged in
