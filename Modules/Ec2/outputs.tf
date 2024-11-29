output "ec2_instance_1_id" {
  value = aws_instance.my_ec2_1.id
}

output "ec2_instance_2_id" {
  value = aws_instance.my_ec2_2.id
}

output "instance_id" {
  value       = aws_instance.my_ec2.id
  description = "The ID of the created EC2 instance"
}

output "public_ip" {
  value       = aws_instance.my_ec2.public_ip
  description = "The public IP of the created EC2 instance"
}

output "private_ip" {
  value       = aws_instance.my_ec2.private_ip
  description = "The private IP of the created EC2 instance"
}
