provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance1" {
  ami                    = var.ubuntu_ami
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg_id]
  subnet_id              = var.subnet_id

  tags = {
    Name = "EC2_instance1"   # Instance name
  }
}

resource "aws_instance" "instance2" {
  ami                    = var.ubuntu_ami
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg_id]
  subnet_id              = var.subnet_id

  tags = {
    Name = "EC2_Instance2"   # Instance name
  }
}
