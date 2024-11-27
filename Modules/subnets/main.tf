resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnets[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}

output "subnet_ids" {
  value = aws_subnet.public[*].id
}
