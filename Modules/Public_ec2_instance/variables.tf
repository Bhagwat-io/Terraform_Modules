# =========================
# EC2 Public Instance Variables
# =========================

variable "subnet_id" {
    description = "Subnet ID for EC2 instance"
}

variable "security_group_id" {
    description = "Security Group ID for EC2 instance"
}

variable "ami" {
    description = "AMI ID for EC2 instance"
}

variable "instance_type" {
    description = "Instance type for EC2 instance"
}

variable "availability_zone" {
    description = "Availability Zone for EC2 instance"
}

variable "associate_public_ip" {
    description = "Whether to associate a public IP address with the EC2 instance"
}

variable "public_instance_count" {
    description = "Number of EC2 instances to create"
}

variable "instance_name" {
    description = "Tag name for EC2 instance"
}

variable "key_name" {
    description = "Key pair name for EC2 instance"
}
