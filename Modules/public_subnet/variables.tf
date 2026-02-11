# =========================
# Public subnet Variables
# =========================

variable "public_cidr_block" {
    description = "This is for public subnet cidr"
}

variable "public_subnet_availability_zone" {
    description = "This is for public subnet availability zone"
}

variable "public_subnet_map_public_ip_on_launch" {
    description = "This is for public subnet"
}

variable "public_subnet_name" {
    description = "This is tag name for public subnet"
}

variable "vpc_id" {
    description = "This is VPC id"
}
