

resource "aws_instance" "myserver" {
  ami           = "ami-0bc7aabcf58d1e02a"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Server"
  }
}