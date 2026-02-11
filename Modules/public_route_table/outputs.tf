output "public_route_id" {
    description = "Public Route Table ID"
    value       = aws_route_table.public_rt.id
}