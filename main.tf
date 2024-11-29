module "vpc" {
  source = "/home/infivit/nitro/Terraform_/Modules/Vpc"

  name = "my-vpc"
  cidr = var.vpc_cidr_block_value

  azs             = var.azs_value
  public_subnets  = var.public_subnets_value

  enable_nat_gateway = false
  enable_vpn_gateway = false

}

module "ec2" {
  source = "/home/infivit/nitro/Terraform_/Modules/Ec2"
  region = var.ec2_region1_value

  instance_type = var.instance_type_value
  ami           = var.ami_value
  subnet_id     = module.vpc.public_subnets[0]

}

module "ec2_instance2" {
  source = "/home/infivit/nitro/Terraform_/Modules/Ec2"
  region = var.ec2_region2_value

  instance_type = var.instance_type_value
  ami           = var.ami_value
  subnet_id     = module.vpc.public_subnets[1]

}