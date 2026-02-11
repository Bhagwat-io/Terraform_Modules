# =========================
# Security Group Variables
# =========================

variable "security_group_name" {
    description = "Name of the security group"
}

variable "security_group_description" {
    description = "Description of the security group"
}

variable "ssh_port" {
    description = "SSH port"
}

variable "app_port_1" {
    description = "Application port 1"
}

variable "app_port_2" {
    description = "Application port 2"
}

variable "security_group_ingress_cidr" {
    description = "Allowed ingress CIDR blocks"
}

variable "security_group_egress_cidr" {
    description = "Allowed egress CIDR blocks"
}

variable "ingress_protocol" {
    description = "Allowed egress CIDR blocks"
}

variable "egress_from_port" {
    description = "Egress from port"
}

variable "egress_to_port" {
    description = "Egress to port"
}

variable "egress_protocol" {
    description = "Egress protocol"
}

variable "egress_cidr_blocks" {
    description = "Allowed egress CIDR blocks"
}

variable "vpc_id" {
    description = "This is VPC id"
}