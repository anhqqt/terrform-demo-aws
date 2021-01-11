# Using AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

# # Backend configuration
# terraform {
#   backend "azurerm" {
#     resource_group_name   = "tfstate"
#     storage_account_name  = "tfstate4445"
#     container_name        = "tfstate"
#     key                   = "terraform.tfstate"
#   }
# }

terraform {
  backend "s3" {
    bucket  = "aq-tfstate-bucket"
    key     = "terraform.tfstate"
    region  = "ap-southeast-1"
  }
}