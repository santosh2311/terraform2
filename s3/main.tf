resource "aws_s3_bucket" "b" {
  count  = length(var.resource_s3)
  bucket = var.resource_s3[count.index]

  tags = {
    Owner   = "santosh.kumar@cloudeq.com"
    Purpose = "assignment"
  }
}