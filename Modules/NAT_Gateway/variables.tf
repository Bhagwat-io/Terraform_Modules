# =========================
# NAT Gateway Variables
# =========================

variable "nat_gateway_name" {
    description = "Tag name for NAT Gateway"
}

variable "allocation_id" {
    description = "Allocation ID for Elastic IP associated with NAT Gateway"
}

variable "subnet_id" {
    description = "Subnet ID for NAT Gateway"
}
