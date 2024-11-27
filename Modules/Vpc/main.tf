resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "My Custom VPC"
  }
}


resource "aws_subnet" "subnet_az1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_az1_cidr
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Subnet for AZ1"
  }
}

resource "aws_subnet" "subnet_az2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_az2_cidr
  availability_zone = "ap-south-1b"

  tags = {
    Name = "Subnet for AZ2"
  }
}
