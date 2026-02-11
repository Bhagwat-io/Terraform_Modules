# =========================
# VPC Variables
# =========================

variable "vpc_cidr_block" {
    description = "This is for vpc cidr block"
}

variable "vpc_tenancy" {
    description = "This is tenancy for vpc"
}

variable "vpc_name" {
    description = "This is tag name for vpc"
}

variable "Dev_region" {
    description = "This is for Dev vpc region"
}

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

# =========================
# Internet Gateway Variables
# =========================

variable "internet_gateway_name" {
    description = "Tag name for Internet Gateway"
}

# =========================
# Public Route Table Variables
# =========================

variable "public_route_cidr_block" {
    description = "CIDR block for public route (internet access)"
}

variable "public_route_table_name" {
    description = "Tag name for public route table"
}

variable "public_route_table_association" {
    description = "Rout Table Association for public subnet"

}


# =========================
# Elastic IP Variables
# =========================

variable "eip_domain" {
    description = "Domain for Elastic IP (vpc)"
}

variable "eip_name" {
    description = "Tag name for Elastic IP"
}

# =========================
# NAT Gateway Variables
# =========================

variable "nat_gateway_name" {
    description = "Tag name for NAT Gateway"
}


# =========================
# Private Route Table Variables
# =========================

variable "private_route_cidr_block" {
    description = "CIDR block for private route (internet via NAT)"
}

variable "private_route_table_name" {
    description = "Tag name for private route table"
}

variable "private_route_table_association" {
    description = "Rout Table Association for private subnet"

}

# =========================
# Key Pair Variables
# =========================

variable "key_pair_name" {
    description = "Name of the EC2 key pair"
}

variable "public_key" {
    description = "Public SSH key material"
}


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

# =========================
# EC2 Public Instance Variables
# =========================

variable "public_instance_ami" {
    description = "AMI ID for public EC2 instance"
}

variable "public_instance_type" {
    description = "Instance type"
}

variable "public_instance_az" {
    description = "Availability Zone for public EC2"
}

variable "associate_public_ip" {
    description = "Associate public IP to instance"
}

variable "public_instance_count" {
    description = "Number of public EC2 instances"
}

variable "public_instance_name" {
    description = "Name tag for public EC2"
}


# =========================
# EC2 Private Instance Variables
# =========================

variable "private_instance_ami" {
    description = "AMI ID for private EC2 instance"
}

variable "private_instance_type" {
    description = "Instance type for private EC2"
}

variable "associate_public_ip_private_instance" {
    description = "Associate public IP to instance"
}

variable "private_instance_az" {
    description = "Availability Zone for private EC2"
}

variable "private_instance_name" {
    description = "Name tag for private EC2"
}
