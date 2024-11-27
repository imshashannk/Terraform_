resource "aws_vpc" "main" {
  cidr_block       = vpc_cidr_block_value
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}