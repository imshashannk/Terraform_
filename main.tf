module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  vpc_name    = "MyCustomVPC"
}

module "subnets" {
  source          = "./modules/subnets"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

module "compute" {
  source              = "./modules/compute"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_ids          = module.subnets.subnet_ids
  vpc_id              = module.vpc.vpc_id
  security_group_name = "ComputeSecurityGroup"
  description         = "Security group for compute instances"
  ingress_from_port   = 22
  ingress_to_port     = 22
  allowed_cidrs       = ["0.0.0.0/0"]
  instance_count      = 3
}
