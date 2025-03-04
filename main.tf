terraform {
  required_version = ">= 1.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0"
    }
  }
}

provider "aws" {
    region = "us-west-2" # Add your region and AWS credentials here (better yet have Dynamic credentials)
}

