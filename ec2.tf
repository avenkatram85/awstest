resource "aws_instance" "terraformVM" {
  ami           = "ami-00d8a762cb0c50254"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.terraform_sg.name]
  key_name	= "awsterraform"
  tags = {
    Name = "TerraformVM"
  }
}

resource "aws_security_group" "terraform_sg" {
  name        = "terraform security group"
  description = "terraform security group"
  vpc_id      = "vpc-2fdd7d4a"

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "terraform security group"
  }
}
