terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
}

#new line added something new kjbvibsifvbkjsgdfgdghtr
provider "aws" {
  region = "us-east-1"
}
#nrew line
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}