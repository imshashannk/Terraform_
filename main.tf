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

module "ec2_instance_1" {
  source              = "/home/infivit/nitro/Terraform_/Modules/Ec2"
  region_value        = var.region_value
  instance_type_value = var.instance_type_value
  ami_value           = var.ami_value
  subnet_id_value     = module.vpc.public_subnets_value  # Pass the first public subnet
}

module "ec2_instance_2" {
  source              = "/home/infivit/nitro/Terraform_/Modules/Ec2"
  region_value        = var.region_value
  instance_type_value = var.instance_type_value
  ami_value           = var.ami_value
  subnet_id_value     = module.vpc.public_subnets_value  # Pass the second public subnet
}
