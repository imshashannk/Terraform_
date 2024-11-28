output "public_ip_address"{
    value = aws_instance.my_ec2.public.ip
}

