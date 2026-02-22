terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
}

#new line added
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}