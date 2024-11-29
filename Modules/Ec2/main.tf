provider "aws" {
  region = var.region_value
}

resource "aws_instance" "my_ec2_1" {
  ami                     = var.ami_value
  instance_type           = var.instance_type_value
  subnet_id               = var.vpc.public_subnets[0]  # Reference the first public subnet
  associate_public_ip_address = true
}

resource "aws_instance" "my_ec2_2" {
  ami                     = var.ami_value
  instance_type           = var.instance_type_value
  subnet_id               = var.vpc.public_subnets[1]  # Reference the second public subnet
  associate_public_ip_address = true
}
