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