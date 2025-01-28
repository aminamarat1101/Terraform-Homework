variable "region" {
  description = "AWS region"
  default = "us-east-2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
  type        = string
}
