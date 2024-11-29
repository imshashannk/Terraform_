resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block_value
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "az1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_az1_value

  tags = {
    Name = "az1"
  }
}

resource "aws_subnet" "az2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_az2_value

  tags = {
    Name = "az2"
  }
}