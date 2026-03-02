terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
}

#new line added something new kjbvibsifvbkjsgdfgdghtr
provider "azure" {
  region = "us-east-1"
}
provider "azure" {
  region = "us-east-2"
}
#nrew line dddfffsdssdfffeeeefffgggggggggg
resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/22"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}