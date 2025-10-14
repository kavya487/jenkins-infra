terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }


 backend "s3" {
    bucket = "divya-tf-remote-states"
    key    = "remote-roboshop-jenkins"
    region = "us-east-1"
    encrypt      = true  
    use_lockfile = true  #S3 native locking
    # dynamodb_table = "daws2025.online-stat
}
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}