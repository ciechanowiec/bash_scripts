#!/bin/bash

# This scripts prints sorted sizes of files 
# provided by ls -l command and taken from STDIN

cat /dev/stdin | awk '{print $5}' | sort | tail +2
