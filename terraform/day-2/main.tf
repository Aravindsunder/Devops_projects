provider "aws" {
    region = "us-east-1"
}

module "ec2-instance" {
  source = "./modules/ec2_instance"
  ami_id_value = "ami-0ecb62995f68bb549"
  subnet_id_value = "subnet-0665fe25023ea0eb0"
  instance_type_value = "t2.micro"
}