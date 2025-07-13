provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance1" {
  ami = "ami-020cba7c55df1f615"   # Ubuntu 24.04
  instance_type = "t3.micro"

  tags = {
    Name = "EC2_instance1"   # Instance name
  }
}

resource "aws_instance" "instance2" {
  ami = "ami-020cba7c55df1f615"   # Ubuntu 24.04
  instance_type = "t3.micro"

  tags = {
    Name = "EC2_Instance2"   # Instance name
  }
}
