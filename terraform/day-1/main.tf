provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-0ecb62995f68bb549"
  instance_type           = "t2.micro"
  subnet_id = "subnet-0665fe25023ea0eb0"
  key_name = "terraform_practice"
}