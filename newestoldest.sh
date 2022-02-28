#!/bin/bash

# This script shows files with the oldest and the latest modification dates

newestFile=`ls -all -t | grep '^-' | head -1`
oldestFile=`ls -all -t | grep '^-' | tail -1`
echo The last modified file in this directory: $newestFile
echo The oldest modified file in this directory: $oldestFile
