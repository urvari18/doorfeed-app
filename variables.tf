variable "env" {
  type = string
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "doorfeed-${var.env}-bucket"
}
