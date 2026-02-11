# =========================
# Security Grp Generation
# =========================

resource "aws_security_group" "bhagwat-sg" {
    name        = var.security_group_name
    description = var.security_group_description
    vpc_id      = var.vpc_id

    tags = {
        Name = var.security_group_name
    }

    ingress {  # Inbound Rules
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.ingress_protocol
        cidr_blocks      = var.security_group_ingress_cidr
    }

    ingress {
        from_port        = var.app_port_1
        to_port          = var.app_port_1
        protocol         = var.ingress_protocol
        cidr_blocks      = var.security_group_ingress_cidr
    }

    ingress {
        from_port        = var.app_port_2
        to_port          = var.app_port_2
        protocol         = var.ingress_protocol
        cidr_blocks      = var.security_group_ingress_cidr
    }

    egress { # Outbound Rule
        from_port        = var.egress_from_port
        to_port          = var.egress_to_port
        protocol         = var.egress_protocol
        cidr_blocks      = var.egress_cidr_blocks
    }
}