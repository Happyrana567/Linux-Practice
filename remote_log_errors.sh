#!/bin/bash

###############################################
# Name    : Happy
# Date    : 28/06/2025
# Purpose : Print only ERROR lines from remote GitHub log file
###############################################

LOG_URL="https://raw.githubusercontent.com/iam-veeramalla/sandbox/refs/heads/main/log/dummylog01122022.log"

echo "📡 Fetching remote log file..."
echo "🔍 Filtering lines with 'ERROR'..."
echo "---------------------------------"

curl -s "$LOG_URL" | grep -i "error"

