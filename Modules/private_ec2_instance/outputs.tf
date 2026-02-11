output "instance_id" {
  description = "ID of the private EC2 instance"
  value       = aws_instance.private_instance.id
}

output "private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.private_instance.private_ip
}

output "instance_type" {
  description = "Instance type of the private EC2 instance"
  value       = aws_instance.private_instance.instance_type
}

output "availability_zone" {
  description = "Availability Zone of the private EC2 instance"
  value       = aws_instance.private_instance.availability_zone
}

output "security_group_id" {
  description = "Security group ID attached to the private EC2 instance"
  value       = var.security_group_id
}

output "key_name" {
  description = "Key pair name for the private EC2 instance"
  value       = aws_instance.private_instance.key_name
}
