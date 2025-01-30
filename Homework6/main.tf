provider aws {
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c614dee691cbbf37"  # Amazon Linux AMI
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }

  user_data = file("apache.sh")
}