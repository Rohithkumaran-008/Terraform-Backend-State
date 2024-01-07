terraform {
  backend "s3" {
    bucket = "testbackendtf1"
    key = "global/mystatefile/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statelock"
    encrypt = true
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}    

provider "aws" {
    region = "us-east-1"
}