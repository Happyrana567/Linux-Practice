#!/bin/bash

#########################################################
# Name: Happy
# Date: 2/7/2025
# Version: 2
# Description: Shows AWS resource headings in terminal,
#              full output is saved in resourceTracker file
#########################################################

# Start fresh log file
OUTPUT_FILE="resourceTracker"
echo "========== AWS RESOURCE TRACKER ==========" > "$OUTPUT_FILE"
date >> "$OUTPUT_FILE"

# S3 Buckets
echo -e "\n🪣 S3 Buckets:"              # Terminal only
echo -e "\n🪣 S3 Buckets:" >> "$OUTPUT_FILE"
aws s3 ls >> "$OUTPUT_FILE"

# EC2 Instances
echo -e "\n🖥️ EC2 Instances (Name + ID):"
echo -e "\n🖥️ EC2 Instances (Name + ID):" >> "$OUTPUT_FILE"
aws ec2 describe-instances \
  --query "Reservations[].Instances[].{Name: Tags[?Key=='Name']|[0].Value, ID: InstanceId}" \
  --output table >> "$OUTPUT_FILE"

# Lambda Functions
echo -e "\n🧠 Lambda Functions (Name only):"
echo -e "\n🧠 Lambda Functions (Name only):" >> "$OUTPUT_FILE"
aws lambda list-functions \
  --query "Functions[*].FunctionName" \
  --output table >> "$OUTPUT_FILE"

# IAM Users
echo -e "\n👤 IAM Users:"
echo -e "\n👤 IAM Users:" >> "$OUTPUT_FILE"
aws iam list-users \
  --query "Users[*].UserName" \
  --output table >> "$OUTPUT_FILE"

# Done
echo -e "\n✅ Done!"
echo -e "\n✅ Done!" >> "$OUTPUT_FILE"

