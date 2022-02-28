#!/bin/bash

# This script shows a file tree for the current folder

prevdir=`pwd`
let dirdepth=1

function showtree () {
	cd $1
	for file in *
	do
		for ((i=0; $i < dirdepth - 1; i++))
		do
			printf "  "
		done
		printf "└—"

		if [ -d $file ]
		then
			printf "\e[34m\e[1m$file\e[0m\n"
		else
			printf "$file\n"
		fi

		if [ -d $file ]
		then
			dirdepth=$(( dirdepth + 1))
			showtree $file
			cd ..
		fi
	done
	let dirdepth=$(( dirdepth - 1 ))	
}

echo "."

showtree $1

cd $prevdir
