# =========================
# Public Route Table
# =========================

resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.public_route_cidr_block
    gateway_id = var.igw_id
  }

  tags = {
    Name = var.public_route_table_name
  }
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public_rt.id
}
