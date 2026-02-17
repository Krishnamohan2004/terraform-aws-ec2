provider "aws" {
  region = "ap-south-2"

}

resource "aws_instance" "instance-1" {
  count         = 5
  ami           = "ami-01cfb0266fc955899"
  instance_type = "t3.micro"
  tags = {
    Name = " server-${count.index}"
  }

}