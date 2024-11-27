provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "this" {
  ami                     = "0dee22c13ea7a9a67"
  instance_type           = "t2.micro"
}