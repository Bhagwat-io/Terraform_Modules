# =========================
# EC2 Instance (Public)
# =========================

resource "aws_instance" "public_instance" {
    count = var.public_instance_count

    ami                         = var.ami
    instance_type               = var.instance_type
    availability_zone           = var.availability_zone
    subnet_id                   = var.subnet_id
    vpc_security_group_ids      = [var.security_group_id]
    associate_public_ip_address = var.associate_public_ip
    key_name                    = var.key_name

    tags = {
        Name = var.instance_name
    }
}
