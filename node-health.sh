#!/bin/bash


##################################
#Name: Happy
#Date: 25/06/2024
#
# This script gives output the Node Health
#
#Version: 01 
###########################################


echo "THIS SHOWS DISC SPACE"
df -h

echo "THIS SHOWS RAM MEMORY"
free -g

echo "THIS SHOWS AVAILABLE CORES"
nproc


