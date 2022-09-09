module "ec2_ins" {
  source = "../ec2"
  name = var.ins_name
  bucket_name2 = "2nd buck"
}



module "s3_buck" {
  source = "../s3"
  bucket_name = var.s3_name
  acl = "private"
}