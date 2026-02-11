# =========================
# Private Subnet
# =========================

resource "aws_subnet" "main_pvt_subnet" {
    vpc_id            = var.vpc_id
    cidr_block        = var.private_cidr_block
    availability_zone = var.private_subnet_availability_zone

    tags = {
    Name = var.private_subnet_name
    }
}