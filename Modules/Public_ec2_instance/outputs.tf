output "instance_type" {
    value = aws_instance.public_instance[0].instance_type
}
output "availability_zone" {
    value = aws_instance.public_instance[0].availability_zone
}
output "subnet_id" {
    value = aws_instance.public_instance[0].subnet_id
}
output "associate_public_ip" {
    value = aws_instance.public_instance[0].associate_public_ip_address
}
output "security_group_id" {
    value = var.security_group_id
}
output "key_name" {
    value = aws_instance.public_instance[0].key_name
}



