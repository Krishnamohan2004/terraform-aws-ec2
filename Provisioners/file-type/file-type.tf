resource "aws_instance" "file_type" {
  ami           = "ami-0bc7aabcf58d1e02a"
  instance_type = "t2.micro"
  key_name = "remote-exec"
  tags = {
    Name = "Nidadavolu Krishna"
  }
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("${path.module}/remote-exec.pem")
    host        = self.public_ip
  }
  provisioner "file" {
    source      = "index.html"
    destination = "/tmp/index.html"

  }
}