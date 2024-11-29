# vpc and subnets

variable "vpc_cidr_block_value" {
  description = "CIDR block for the custom VPC"
  type        = string
}

variable "azs_value" {
  description = "A list of availability zones in the region"
  type        = list(string)
}

variable "private_subnets_value" {
  description = "A list of private subnets inside the custom VPC"
  type        = list(string)
}

variable "public_subnets_value" {
  description = "A list of public subnets inside the custom VPC"
  type        = list(string)
}

# Ec2 

variable "instance_type_value" {
  description = "The type of instance to start"
  type = string
}

variable "ami_value" {
  description = "The AMI to use for the instance"
  type = string
  
}

variable "region_value" {
  description = "The region to launch the instance in"
  type = string
  
}

