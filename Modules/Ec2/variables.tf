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

variable "subnet_id_value" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}


