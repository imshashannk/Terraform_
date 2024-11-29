variable "vpc_cidr_block_value" {
  description = "CIDR block for the custom VPC"
  type        = string
}

variable "cidr_block_az1_value" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "cidr_block_az2_value" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "public_subnets_value" {
  description = "A list of public subnets inside the custom VPC"
  type        = list(string)
}
