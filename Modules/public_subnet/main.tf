# =========================
# Public Subnet
# =========================

resource "aws_subnet" "main_pub_subnet" {
    vpc_id                  = var.vpc_id
    cidr_block              = var.public_cidr_block
    availability_zone       = var.public_subnet_availability_zone
    map_public_ip_on_launch = var.public_subnet_map_public_ip_on_launch

    tags = {
        Name = var.public_subnet_name
    }
}