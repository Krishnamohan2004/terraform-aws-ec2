provider "aws" {
  region = "ap-south-2"

}
resource "aws_instance" "hyderabad" {
  ami           = "ami-01cfb0266fc955899"
  instance_type = "t3.micro"
  tags = {
    Name = "hyderabad-server"
  }
}
provider "aws" {
  region = "ap-south-1"
  alias  = "India"
}
resource "aws_instance" "mumbai" {
  provider      = aws.India
  ami           = "ami-0317b0f0a0144b137"
  instance_type = "t3.micro"
  tags = {
    Name = "mumbai-server"
  }

}