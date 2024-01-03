provider "aws" {
  region = "us-east-2"
  access_key = "AK***************I"
  secret_key = "rR********************koKaaB3"
}

resource "aws_s3_bucket" "b" {
  bucket = "creatings3"
  acl    = "private"
 
}
