output "public_subnets_value" {
  description = "List of public subnets"
  value       = aws_subnet.public.*.id  # or however you define the public subnets in your VPC module
}
