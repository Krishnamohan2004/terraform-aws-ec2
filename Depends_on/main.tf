provider "aws" {
  region = "ap-south-2"

}
resource "aws_instance" "server-1" {
  ami           = "ami-01cfb0266fc955899"
  instance_type = "t3.micro"
  tags = {
    Name = "krishna"
  }
}
resource "aws_s3_bucket" "my_bucket" {
  bucket     = "krishna-8499828758-vcube-137"
  depends_on = [aws_instance.server-1]

}