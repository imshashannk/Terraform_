output "vpc_id" {
    value = aws_vpc.my_vpc1.id
} 

output "public_subnets" {
  value = aws_subnet.public.*.id
}
