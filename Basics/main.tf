provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "this" {
  ami                     = "ami-0dee22c13ea7a9a67"
  instance_type           = "t2.micro"
  subnet_id               = "subnet-07e23f6b841b9feef"

}