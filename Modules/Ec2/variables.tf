variable "region_value" {
    description = "The region to launch the instance in"
    type        = string
}

variable "ami_value" {
    description = "The AMI ID to use for the instance" 
    type        = string
}


variable "instance_type_value" {
    description = "The instance type to use for the instance"
    type        = string
}

variable "public_subnets_value" {
  description = "A list of public subnets inside the custom VPC"
  type        = list(string)
}

variable "subnet_id_value" {
  type        = string
  description = "The ID of the subnet where the EC2 instance will be deployed"
}
