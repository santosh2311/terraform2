resource "aws_s3_bucket" "b" {
  bucket = "var.bucket_name"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = var.bucket_name
  acl    =var.acl
}