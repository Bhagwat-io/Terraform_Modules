# =========================
# Public Route Table Variables
# =========================

variable "vpc_id" {
    description = "VPC ID for route table association"
}

variable "igw_id" {
    description = "Internet Gateway ID for route table association"
}

variable "subnet_id" {
    description = "Subnet ID for route table association"
}

variable "public_route_cidr_block" {
    description = "CIDR block for public route (internet access)"
}

variable "public_route_table_name" {
    description = "Tag name for public route table"
}

