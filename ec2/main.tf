resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"

  tags = {
    Name = var.name
  }
}


resource "aws_s3_bucket" "b" {
  bucket = "var.bucket_name2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
