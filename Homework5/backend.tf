terraform {
    backend "s3" {
    bucket = "kaizen-aminamarat"
    key = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
   }
 }

