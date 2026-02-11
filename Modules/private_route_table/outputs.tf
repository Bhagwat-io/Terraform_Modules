output "private_route_id" {
    description = "Private Route Table ID"
    value       = aws_route_table.private_rt.id
}

output "nat_gateway_id" {
    description = "NAT Gateway ID for private route table"
    value       =  var.nat_gateway_id
  
}