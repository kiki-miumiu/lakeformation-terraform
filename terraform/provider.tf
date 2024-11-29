terraform {
  backend "s3" {
  }
  required_version = ">= 1.9.7"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "<= 5.69"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}
