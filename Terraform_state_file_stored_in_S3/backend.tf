terraform {
  backend "s3" {
    bucket  = "krishna-tf-state-bucket-12345"
    key     = "dev/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
