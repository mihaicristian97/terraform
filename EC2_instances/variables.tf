variable "ubuntu_ami" {
    description = "value of the Ubuntu AMI to use for the instances"
    type        = string
}

variable "vpc_id" {
    description = "The ID of the default VPC where the instances will be launched"
    type        = string
}

variable "sg_id" {
    description = "The ID of default created security group"
    type        = string
}

variable subnet_id {
    description = "The ID of the default subnet where the instances will be launched"
    type        = string
}