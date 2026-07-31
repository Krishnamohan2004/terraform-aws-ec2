resource "aws_instance" "krishna" {
  ami           = "ami-00d2dbb426772b03a"
  instance_type = "t2.micro"

  tags = {
    Name = "nidadavolu"
  }
}

resource "aws_ebs_volume" "krishna_ebs" {
  availability_zone = aws_instance.krishna.availability_zone
  size              = 10
  type              = "gp3"

  tags = {
    Name = "krishna-ebs"
  }
}

resource "aws_volume_attachment" "krishna_ebs_attachment" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.krishna_ebs.id
  instance_id = aws_instance.krishna.id
}