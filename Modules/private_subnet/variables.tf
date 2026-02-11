# =========================
# Private Subnet Variables
# =========================

variable "private_cidr_block" {
    description = "This is for private subnet cidr"
}

variable "private_subnet_availability_zone" {
    description = "This is for private subnet availability zone"
}

variable "private_subnet_name" {
    description = "This is tag name for private subnet"
}

variable "vpc_id" {
    description = "This is VPC id"
}