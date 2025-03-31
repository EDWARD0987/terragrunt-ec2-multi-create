provider "aws" {
  region = "us-east-1"
}

data "aws_vpc" "elinks_vpc" {
}

data "aws_subnet" "zone1" {
  filter {                       # the filter block is used to filter inside your existing vpc based on subnet tag
    name = "tag:Name"
    values = ["default_subnet_AZ_A"]
  }
}

data "aws_subnet" "zone2" {
  filter {
    name = "tag:Name"
    values = ["default_subnet_AZ_B"]
  }
}

resource "aws_instance" "ec2_instance_1" {
  subnet_id     = data.aws_subnet.zone1.id
  ami           = var.ami
  instance_type = var.instance_type
  availability_zone = var.az1

   tags = {
    Name        = "vm-1"
    Environment = "production"
    Owner       = "cloud_user"
  }
}

resource "aws_instance" "ec2_instance_2" {
  subnet_id     = data.aws_subnet.zone2.id
  ami           = var.ami
  instance_type = var.instance_type

   tags = {
    Name        = "vm-2"
    Environment = "production"
    Owner       = "cloud_user"
  }
}