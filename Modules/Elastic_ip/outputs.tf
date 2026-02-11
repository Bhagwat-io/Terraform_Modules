output "eip_allocation_id" {
    description = "Elastic IP allocation ID"
    value       = aws_eip.nat_eip.id
}

output "eip_public_ip" {
    description = "Elastic IP public IP"
    value       = aws_eip.nat_eip.public_ip
}
