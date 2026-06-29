resource "aws_instance" "remote-exec" {
  ami           = "ami-0bc7aabcf58d1e02a"
  instance_type = "t2.medium"
  key_name      = "remote-exec"

  tags = {
    Name = "remote-exec-server"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("${path.module}/remote-exec.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install httpd -y",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd"
    ]
  }
}

