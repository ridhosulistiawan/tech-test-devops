provider "aws" {
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
  region     = "ap-southeast-1"
}

resource "aws_instance" "web-ridho" {
  ami           = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]
  user_data = "${file("script.sh")}"
  tags = {
    Name = "web-ridho"
  }
}

resource "aws_security_group" "sg" {
  name        = "web-ridho"
  description = "Allow HTTP and SSH access"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
