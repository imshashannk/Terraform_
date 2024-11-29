module "vpc" {
  source = "/home/infivit/nitro/Terraform_/Modules/Vpc"

  vpc_cidr          = var.vpc_cidr_block_value
  availability_zones = var.azs_value
  public_subnets     = var.public_subnets_value

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform    = "true"
    Environment = "testing"
  }
}

module "ec2" {
  source = "/home/infivit/nitro/Terraform_/Modules/Ec2"

  region_value        = var.region_value
  instance_type_value = var.instance_type_value
  ami_value           = var.ami_value
  subnet_id_value     = module.vpc.public_subnets_value[0]  # Using the first public subnet from VPC module
}

module "ec2_instance2" {
  source = "/home/infivit/nitro/Terraform_/Modules/Ec2"

  region_value        = var.region_value
  instance_type_value = var.instance_type_value
  ami_value           = var.ami_value
  subnet_id_value     = module.vpc.public_subnets_value[1]  # Using the second public subnet from VPC module
}

