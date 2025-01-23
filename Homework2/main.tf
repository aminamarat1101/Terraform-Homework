provider aws {
    region = "us-east-1"
}

resource "aws_key_pair" "Bastion-key" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-aminamarat"
}

resource "aws_s3_bucket" "manual" {
  bucket = "hw2-bucket1"
}
# terraform import aws_s3_bucket.manual hw2-bucket1

resource "aws_s3_bucket" "manual2" {
  bucket = "hw2-bucket2"
}
# terraform import aws_s3_bucket.manual2  hw2-bucket2
# td - successful
