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
resource "aws_instance" "my-first-instance" {
  for_each      = toset(["dev-server", "Qa-server", "prod-server"])
  instance_type = "t3.micro"
  ami           = "ami-01cfb0266fc955899"
  tags = {
    Name = each.key
  }
}