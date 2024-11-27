resource "aws_security_group" "this" {
  vpc_id = var.vpc_id

  name        = var.security_group_name
  description = var.description

  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidrs
  }
}

resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_ids[count.index]

  tags = {
    Name = "Compute Instance ${count.index + 1}"
  }
}

output "instance_ids" {
  value = aws_instance.this[*].id
}
