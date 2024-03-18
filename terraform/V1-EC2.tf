provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "viraj_demo-server"{
     ami = "ami-09b9e25b6db1d130c"
     instance_type = "t2.micro"
     key_name = "viraj"
}