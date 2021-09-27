provider "aws" {
  region = var.awsRegion

  # Make it faster by skipping something
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

terraform {
  backend "s3" {
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
