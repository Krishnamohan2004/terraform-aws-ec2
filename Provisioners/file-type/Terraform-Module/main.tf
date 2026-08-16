module "dev" {
  source = "./modules/ec2"

  instance_name = "dev-server"
  instance_type = "t2.micro"
  ami_id         = "ami-0f918f7e67a3323f0"
}

module "qa" {
  source = "./modules/ec2"

  instance_name = "qa-server"
  instance_type = "t2.micro"
  ami_id         = "ami-0f918f7e67a3323f0"
}

module "prod" {
  source = "./modules/ec2"

  instance_name = "prod-server"
  instance_type = "t2.micro"
  ami_id         = "ami-0f918f7e67a3323f0"
}