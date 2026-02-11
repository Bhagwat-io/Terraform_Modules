output "private_subnet_id" {
    description = "Private Subnet ID"
    value       = aws_subnet.main_pvt_subnet.id
}