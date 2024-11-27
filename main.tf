module "Vpc" {
  source      = "./Modules/Vpc"
  vpc_cidr    = var.cidr_block
  vpc_name    = "MyCustomVPC"
}

module "subnets" {
  source          = "./Modules/subnets"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  azs             = ["ap-south-2a", "ap-south-2b"]
}

module "Ec2" {
  source              = "./Modules/Ec2"
  ami_id              = var.ami
  instance_type       = var.instance_type_value
  subnet_ids          = module.subnets.subnet_ids
  vpc_id              = module.vpc.vpc_id
  ingress_from_port   = 22
  ingress_to_port     = 22
  allowed_cidrs       = ["0.0.0.0/0"]
  instance_count      = 2
}
