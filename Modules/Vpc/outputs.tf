output "vpc_id" {
    value = aws_vpc.my_vpc1.id
} 

output "public_subnets_value" {
  description = "List of public subnets"
  value       = aws_subnet.public.*.id  # or however you define the public subnets in your VPC module
}


output "subnet_az1_id" {
  value = aws_subnet.az1.id
}

output "subnet_az2_id" {
  value = aws_subnet.az2.id
}