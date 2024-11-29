variable "region_value" {
  type        = string
  description = "Region to deploy the EC2 instance"
}

variable "ami_value" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type_value" {
  type        = string
  description = "Instance type for the EC2 instance"
}

variable "subnet_id_value" {
  type        = string
  description = "Subnet ID where the EC2 instance will be deployed"
}
