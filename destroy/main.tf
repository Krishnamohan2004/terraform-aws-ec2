terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.32.1"
    }
  }
}

provider "aws" {
region = "ap-south-2"

}
resource "aws_instance" "web-server-1" {
ami           = "ami-01cfb0266fc955899"
instance_type = "t3.micro"
tags = {
Name = "server-1"
  }

}
resource "aws_instance" "web-server-2" {
ami           = "ami-01cfb0266fc955899"
instance_type = "t3.micro"
tags = {
Name = "server-2"
  }
}
