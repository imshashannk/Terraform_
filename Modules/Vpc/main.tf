resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block_value
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}