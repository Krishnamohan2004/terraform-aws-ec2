terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws"{
    region ="ap-south-2"
}
resource "aws_instance" "server"{
    ami ="ami-090b9c8aa1c84aefc"
    instance_type ="t3.micro"
}
import {
    to = aws_instance.server
    id ="i-0d830c3359d6fb46a"
}