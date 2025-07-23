provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "doorfeed-${var.env}-app-bucket"
}

resource "aws_s3_bucket_acl" "app_bucket_acl" {
  bucket = aws_s3_bucket.app_bucket.id
  acl    = "private"
}


output "bucket_name" {
  value = aws_s3_bucket.app_bucket.id
}

resource "aws_cloudwatch_log_group" "app_logs" {
  name = "/doorfeed/${var.env}/app"
  retention_in_days = 14
}
