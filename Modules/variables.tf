# vpc and subnets

variable "vpc_cidr_block_value" {
  description = "CIDR block for the custom VPC"
}

variable "azs_value" {
  description = "A list of availability zones in the region"
}

variable "private_subnets_value" {
  description = "A list of private subnets inside the custom VPC"
}

variable "public_subnets_value" {
  description = "A list of public subnets inside the custom VPC"
}

# Ec2 

variable "instance_type_value" {
  description = "The type of instance to start"
}

variable "ami_value" {
  description = "The AMI to use for the instance"
  
}