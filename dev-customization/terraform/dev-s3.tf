resource "aws_s3_bucket" "mybucket" {
  bucket = "account-specific-mybucket-${random_id.suffix.dec}"
  acl    = "private"

  tags = {
    Name        = "My account-specific bucket"
    Environment = "Dev"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}