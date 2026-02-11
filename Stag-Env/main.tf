# =========================
# VPC 
# =========================

module "vpc"{
    source = "../Modules/VPC"
    vpc_cidr_block = var.vpc_cidr_block
    vpc_tenancy = var.vpc_tenancy
    vpc_name = var.vpc_name

}

# =========================
# Public subnet 
# =========================

module "public_subnet"{
    source = "../Modules/public_subnet"
    public_cidr_block = var.public_cidr_block
    public_subnet_availability_zone = var.public_subnet_availability_zone
    public_subnet_map_public_ip_on_launch = var.public_subnet_map_public_ip_on_launch
    public_subnet_name = var.public_subnet_name
    vpc_id = module.vpc.vpc_id
}

# =========================
# Private subnet 
# =========================

module "private_subnet" {
    source = "../Modules/private_subnet"
    private_cidr_block = var.private_cidr_block
    private_subnet_availability_zone = var.private_subnet_availability_zone
    private_subnet_name = var.private_subnet_name
    vpc_id = module.vpc.vpc_id
}

# =========================
# Internet Gateway
# =========================

module "igw" {
    source = "../Modules/igw"
    internet_gateway_name = var.internet_gateway_name
    vpc_id = module.vpc.vpc_id
}

# =========================
# Public Route Table
# =========================

module "public_route_table" {
    source = "../Modules/public_route_table"
    vpc_id = module.vpc.vpc_id
    igw_id = module.igw.igw_id
    subnet_id = module.public_subnet.public_subnet_id
    public_route_cidr_block = var.public_route_cidr_block
    public_route_table_name = var.public_route_table_name
}


# =========================
# Private Route Table
# =========================

module "private_route_table" {
    source = "../Modules/private_route_table"
    vpc_id = module.vpc.vpc_id
    igw_id = module.igw.igw_id
    subnet_id = module.private_subnet.private_subnet_id
    private_route_cidr_block = var.private_route_cidr_block
    private_route_table_name = var.private_route_table_name
    private_route_table_association = module.private_subnet.private_subnet_id
    nat_gateway_id = module.NAT_Gateway.nat_gateway_id
}

# =========================
# Elastic IP
# =========================

module "Elastic_ip" {
    source     = "../Modules/Elastic_ip"
    eip_domain = var.eip_domain
    eip_name   = var.eip_name
}


# =========================
# NAT Gateway
# =========================

module "NAT_Gateway" {
    source = "../Modules/NAT_Gateway"

    nat_gateway_name = var.nat_gateway_name
    allocation_id    = module.Elastic_ip.eip_allocation_id
    subnet_id        = module.private_subnet.private_subnet_id
}


# =========================
# Key-pair
# =========================

module "key_pair" {
    source = "../Modules/key_pair"
    key_pair_name = var.key_pair_name
    public_key = var.public_key
}

# =========================
# Security Group
# =========================

module "Security_Group" {
    source = "../Modules/Security_Group"
    vpc_id = module.vpc.vpc_id
    security_group_name = var.security_group_name
    security_group_description = var.security_group_description
    ingress_protocol = var.ingress_protocol
    ssh_port = var.ssh_port
    security_group_ingress_cidr = var.security_group_ingress_cidr
    app_port_1 = var.app_port_1
    app_port_2 = var.app_port_2
    egress_from_port = var.egress_from_port
    egress_to_port = var.egress_to_port
    egress_protocol = var.egress_protocol
    egress_cidr_blocks = var.egress_cidr_blocks
    security_group_egress_cidr = var.security_group_egress_cidr
}

# =========================
# Public EC2 Instance
# =========================

module "public_ec2_instance" {
    source = "../Modules/Public_ec2_instance"

    ami                     = var.public_instance_ami
    instance_type           = var.public_instance_type
    availability_zone       = var.public_instance_az
    public_instance_count   =   var.public_instance_count
    instance_name           = var.public_instance_name

    key_name                = module.key_pair.key_pair
    subnet_id               = module.public_subnet.public_subnet_id
    security_group_id       = module.Security_Group.security_group_id
    associate_public_ip     = var.associate_public_ip
}


# =========================
# Private EC2 Instance
# =========================

module "private_ec2_instance" {
    source = "../Modules/private_ec2_instance"
    ami               = var.private_instance_ami
    instance_type     = var.private_instance_type
    availability_zone = var.private_instance_az
    instance_name     = var.private_instance_name
    

    key_name          = module.key_pair.key_pair
    subnet_id         = module.private_subnet.private_subnet_id
    security_group_id = module.Security_Group.security_group_id
}
