# =========================
# Elastic IP Address
# =========================

resource "aws_eip" "nat_eip" {
    domain = var.eip_domain

    tags = {
        Name = var.eip_name
    }
}
