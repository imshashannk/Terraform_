output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.subnets.subnet_ids
}

output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = module.compute.instance_ids
}
