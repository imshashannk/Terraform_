provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "this" {
  ami                     = "ami-0614680123427b75e"
  instance_type           = "t2.micro"
  subnet_id               = "subnet-07e23f6b841b9feef"

}