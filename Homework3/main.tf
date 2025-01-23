provider aws {
    region = "us-east-1"
}

resource "aws_key_pair" "bastion" {
  key_name   = "bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  owners      = ["amazon"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.bastion.key_name
  availability_zone = "us-east-1a"
  security_groups   = [aws_security_group.web_sg.name] 
  user_data = file("apache.sh")

  tags = {
    Name = "web-1"
  }
}

resource "aws_instance" "web2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.bastion.key_name
  availability_zone = "us-east-1b"
  security_groups   = [aws_security_group.web_sg.name] 
  user_data = file("apache.sh")

  tags = {
    Name = "web-2"
  }
}

resource "aws_instance" "web3" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.bastion.key_name
  availability_zone = "us-east-1c"
  security_groups   = [aws_security_group.web_sg.name] 
  user_data = file("apache.sh")

  tags = {
    Name = "web-3"
  }
}