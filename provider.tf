provider "aws" {
  region     = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block       ="180.160.0.0/16"
  instance_tenancy = "default"
  tags {
    Name="main"
    Location = "Houston"
  }
}
