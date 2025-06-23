provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Test_Terraform_EC2" {
  ami = "ami-042b4708b1d05f512"   #Ubuntu 24.04
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Tag"
  }
}
