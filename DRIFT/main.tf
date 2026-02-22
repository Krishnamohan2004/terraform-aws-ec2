provider "aws" {
  region = "ap-south-2"
}
resource "aws_instance" "server" {
  ami           = "ami-090b9c8aa1c84aefc"
  instance_type = "t3.micro"
  tags = {
    Name = "krishna"
  }
}
