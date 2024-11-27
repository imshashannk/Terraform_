provider "aws" {
  region     = "var.region_value"
}

resource "aws_instance" "this" {
  ami                     = var.ami_value
  instance_type           = var.instance_type_value
  subnet_id               = var.subnet_id_value

}