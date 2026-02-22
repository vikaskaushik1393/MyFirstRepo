terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.30.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "main" {
  cidr_block = "192.168.1.0/24"
  tags = {
    Name = "main"
  }
}

