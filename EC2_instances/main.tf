provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance1" {
  ami = var.ubuntu_ami   # Using the variable defined in variables.tf
  instance_type = "t3.micro"

  tags = {
    Name = "EC2_instance1"   # Instance name
  }
}

resource "aws_instance" "instance2" {
  ami = var.ubuntu_ami
  instance_type = "t3.micro"

  tags = {
    Name = "EC2_Instance2"   # Instance name
  }
}
