provider "aws" {
  region = var.region_value
}

resource "aws_instance" "my_ec2" {
  ami                     = var.ami_value
  instance_type           = var.instance_type_value
  subnet_id               = var.subnet_id_value  # Reference to the subnet passed from the root module
  associate_public_ip_address = true

}
