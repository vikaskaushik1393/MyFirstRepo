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
provider "aws" {
  region = "us-east-2"
}
#nrew line dddfffsdssdfff
resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/24"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}