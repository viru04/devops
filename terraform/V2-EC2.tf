provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "viraj_demo-server"{
     ami = "ami-09b9e25b6db1d130c"
     instance_type = "t2.micro"
     key_name = "viraj"
     security_groups = ["demo-vs"]
}

resource "aws_security_group" "demo-vs" {
  name        = "demo-vs"
  description = "SSH Access"
  
  ingress {
    description      = "Shh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ssh-prot"

  }
}