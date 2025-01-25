resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.key.key_name
  availability_zone = var.availability_zone
  security_groups   = [aws_security_group.sg.name]

  tags = {
    Name = var.instance_name
  }
}
