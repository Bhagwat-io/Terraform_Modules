# Store Variable Values

# =========================
# VPC Variable Values
# =========================

vpc_cidr_block = "10.0.0.0/16"
vpc_tenancy = "default"
vpc_name = "Bhagwat-stag-env-vpc"
stag_env_region = "us-east-2"

# =========================
# public subnet Variable Values
# =========================

public_cidr_block = "10.0.1.0/24"
public_subnet_availability_zone = "us-east-2a" 
public_subnet_map_public_ip_on_launch = true
public_subnet_name = "Bhagwat-stag-env-pub-subnet"

# =========================
# Private Subnet Variable Values
# =========================

private_cidr_block                 = "10.0.2.0/24"
private_subnet_availability_zone   = "us-east-2b"
private_subnet_name                = "Bhagwat-stag-env-pvt-subnet"

# =========================
# Internet Gateway Variable Values
# =========================

internet_gateway_name = "Bhagwat-stag-env-igw"


# =========================
# Public Route Table Variable Values
# =========================

public_route_cidr_block     = "0.0.0.0/0"
public_route_table_name     = "Bhagwat-stag-env-public-route-table"


# =========================
# Elastic IP Variable Values
# =========================

eip_domain = "vpc"
eip_name   = "Bhagwat-stag-env-eip"

# =========================
# NAT Gateway Variable Values
# =========================

nat_gateway_name = "Bhagwat-stag-env-nat-gw"


# =========================
# Private Route Table Variable Values
# =========================

private_route_cidr_block   = "0.0.0.0/0"
private_route_table_name   = "Bhagwat-stag-env-private-route-table"


# =========================
# Key Pair Variable Values
# =========================

key_pair_name = "Bhagwat-stag-env-key"

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC3CyJ62nwNuBDKFXrXVySTGBBGaPiaklF0I+izswjZz/0dXzPvmtQLBK21tQyWBHB9w8mXaQrRuuVG94B+jmJ06aonNgFfGM5of7GIgf2bUjlsj7cnNLjUBtZTI4V897nUMGwt0i1r5iEmDTNVYG7yEIhMBguV2IxveY7cqPdECOgqulq+If4ZjviXVgwZhKnJ9/XATlxYmQx5G++P2xrSHgZv51zJiM3l/F8C8r1mShV15A7Pyv4JjHPU9DS8wV6l0Jy6VOq9HPB9DvSldPTHjUhf8SkupZQuX7r4MWszuMtlCk4Z0qmOoAsNiAsWVHAOl+3hhjNdMdGzpXbwG88UXQlUzVrSLDH7ydDfZc/06eDzzqnSRmODzAr5VuXqCn1OnC6+hBHgxeE3fsMU/4k2E+G8uIPHZ2ZNTbgg78gjzDG6ES07dj9SnJa9uA+dtK8YqQlwpRKKCodzK4WUTfS8Oa9t2djj4JKY1nhP/nwIIMjHTzEmsFExHG8daMHilagYoU7CkTZoyto8zCieilLXi7QicRQ1vGV76ImlXp7GCmjMo/YlqzS+teuUXl3BtFZA6137xtNHZOmLlwb5XOzMrAxrVwdYqqn8aPG71V/ccI7/VJICJE6ZLTzLDVnNIfrZ9NhwQv6Fyj6zw5DlRwzuyjc2vLchkiieHSm8JJuCew== bhagwat@LAPTOP-91GIVD30"

# =========================
# Security Group Variable Values
# =========================

security_group_name        = "Bhagwat-stag-env-sg"
security_group_description = "Allow SSH and application ports"

ssh_port   = "22"
app_port_1 = "8080"
app_port_2 = "9000"
ingress_protocol = "tcp"

security_group_ingress_cidr = ["0.0.0.0/0"]
security_group_egress_cidr  = ["0.0.0.0/0"]

# Egress (Allow all outbound)
egress_from_port   = "0"
egress_to_port     = "0"
egress_protocol    = "-1"
egress_cidr_blocks = ["0.0.0.0/0"]

# =========================
# EC2 Public Instance Values
# =========================

public_instance_ami   = "ami-06e3c045d79fd65d9"
public_instance_type = "t3.medium"
public_instance_az   = "us-east-2a"

associate_public_ip   = true
public_instance_count = 1

public_instance_name = "Bhagwat-stag-env-public-ec2"


# =========================
# EC2 Private Instance Values
# =========================

private_instance_ami   = "ami-06e3c045d79fd65d9"
private_instance_type = "t2.micro"
private_instance_az   = "us-east-2b"

associate_public_ip_private_instance   = false

private_instance_name = "Bhagwat-stag-env-private-ec2"
