variable "subnet_id" {
    description = "Private subnet ID for EC2 instance"
}

variable "security_group_id" {
    description = "Security Group ID for private EC2 instance"
}

variable "ami" {
    description = "AMI ID for private EC2 instance"
}

variable "instance_type" {
    description = "EC2 instance type"
}

variable "availability_zone" {
    description = "Availability Zone for EC2 instance"
}

variable "instance_name" {
    description = "Name tag for EC2 instance"
}

variable "key_name" {
    description = "Key pair name for EC2 instance"
}
