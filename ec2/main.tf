resource "aws_instance" "web" {
  for_each      = var.resource_ec2
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"

  tags = {
    Name    = each.value
    Owner   = "santosh.kumar@cloudeq.com"
    Purpose = "assignment"
  }
}