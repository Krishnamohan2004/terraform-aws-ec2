resource "aws_instance" "local-exec" {
    ami = "ami-0bc7aabcf58d1e02a"
    instance_type = "t2.micro"
    tags = {
        Name = "local-exec-instance"
    
    }

    provisioner "local-exec"{
        command = "echo ${self.pu_ip} > private_ip.txt"
    }
}



