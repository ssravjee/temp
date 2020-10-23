provider "aws" {
  region = "eu-west-2"
}
resource "aws_vpc" "main" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name     = "main"
    Location = "London"
  }

}
resource "aws_subnet" "subnet1" {
  cidr_block = "190.160.1.0/24"
  vpc_id     = aws_vpc.main.id

  tags = {
    Name = "Subnet1"
  }
}

