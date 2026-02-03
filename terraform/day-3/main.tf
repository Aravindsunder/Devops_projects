provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "state" {
  ami = "ami-0ecb62995f68bb549"
  instance_type = "t2.micro"
  subnet_id = "subnet-0665fe25023ea0eb0"
}

# resource "aws_s3_bucket" "test-bucket" {
#   bucket = "aravind-terraform-test0998"
#   region = "us-east-1"
# }