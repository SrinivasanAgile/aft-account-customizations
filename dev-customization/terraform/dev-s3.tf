resource "aws_s3_bucket" "mybucket" {
  bucket = "mybucket0302202301"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

