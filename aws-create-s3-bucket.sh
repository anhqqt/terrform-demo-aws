#!/usr/bin/env bash

# Reference:    https://medium.com/faun/terraform-remote-backend-demystified-cb4132b95057
#               https://www.terraform.io/docs/backends/types/s3.html
# Create S3 Bucket
aws s3api create-bucket --bucket aq-tfstate-bucket --region ap-southeast-1 --create-bucket-configuration LocationConstraint=ap-southeast-1

# Create new user to use only with Terraform
aws iam create-user --user-name terraform-deployer

# Go to AWS Console to attach policy to it
# Or manually create by using command
aws iam attach-user-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --user-name terraform-deployer
# Output: expect none when the command execution is successful
aws iam attach-user-policy --policy-arn arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess --user-name terraform-deployer
# Output: expect none when the command execution is successful

# Enable versioning to be able to rollback to previous state
aws s3api put-bucket-versioning --bucket aq-tfstate-bucket --versioning-configuration Status=Enabled