#!/bin/bash

# This script changes all specified file extensions in a given directory

directory=$1

for file in $directory/*.sh
do
	mv $file $directory/$( basename -s .sh $file ).html
done

echo File extensions have been changed!
