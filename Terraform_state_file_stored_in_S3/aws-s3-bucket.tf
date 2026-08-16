
resource "aws_s3_bucket" "tfstate" {
  bucket = "krishna-tf-state-bucket-12345"

  tags = {
    Name = "Terraform-State-Bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tfstate.id

  versioning_configuration {
    status = "Enabled"
  }
}