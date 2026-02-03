terraform {
  backend "s3" {
    bucket = "aravind-terraform-test0998"
    region = "us-east-1"
    key = "aravind/terraform.tfstate"
  }
}