variable "vpc_id" {
    description = "VPC ID for route table association"
}

variable "igw_id" {
    description = "Internet Gateway ID for route table association"
}

variable "subnet_id" {
    description = "Subnet ID for route table association"
}

variable "private_route_cidr_block" {
    description = "CIDR block for private route (NAT Gateway access)"
}

variable "private_route_table_name" {
    description = "Tag name for private route table"
}

variable "private_route_table_association" {
    description = "Subnet ID for private route table association"
}

variable "nat_gateway_id" {
    description = "NAT Gateway ID for private route table"
}