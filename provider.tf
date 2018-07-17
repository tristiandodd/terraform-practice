provider "aws" { //Must have the provider, and for aws the region you want it in
  region     = "us-east-1"
}

resource "aws_vpc" "main" { // type of resource first and then the name of it.
  cidr_block       ="190.160.0.0/16" //Cidr Block for iP Range
  instance_tenancy = "default" //Type of instance can be default, dedicated or host
  tags {
    Name="main"   //Same as the Tags you use in AWS console to label things
    Location = "Houston"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = "${aws_vpc.main.id}" //Required refers to the Id of the vpc_id
  cidr_block = "190.160.1.0/24" //Required Cidr Block for the subnet being created

  tags {
    Name= "Subnet1" //Optional
  }
}
