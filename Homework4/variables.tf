variable "region" {
  default = "us-east-1"
  description = "AWS region"
  type        = string
}

variable "key_name" {
  default = "my-key"
  description = "Key pair name for EC2"
  type        = string
}

variable "ports" {
  default     = [22, 80, 443]
  description = "List of ports"
  type        = list(number)
}

variable "availability_zone" {
  default = "us-east-1a"
  description = "AWS AZ to create EC2 in"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  default = "ami-0ac4dfaf1c5c0cce9"
  description = "AMI ID for the EC2"
  type        = string
}

variable "instance_name" {
  default = "homework-4"
  description = "Name for the EC2"
  type        = string
}
