# =========================
# Private Route Table
# =========================

resource "aws_route_table" "private_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.private_route_cidr_block
    nat_gateway_id = var.nat_gateway_id
  }

  tags = {
    Name = var.private_route_table_name
  }
}

resource "aws_route_table_association" "private_assoc" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.private_rt.id
}
