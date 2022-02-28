#!/bin/bash

# This script prints random number divisible by 100

result=$((($RANDOM % 100) * 100))
echo $result
