#!/bin/bash


###################################
#Name: Happy
#Date: 28/06/2025
#This process list all running Processes
#
############################################


echo "Listing all running Processes..."
ps -eo pid,user,cmd,%cpu,%mem --sort=-%cpu | head -n 20


