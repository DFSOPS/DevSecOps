provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "howdy53" {
  bucket = "howdy53"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "howdy53"
    key            = "vglobal/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
resource "aws_instance" "howdyr53" {
  ami           = "ami-0903ff18cc3c8e341" # Replace with the desired Amazon Linux 2 AMI for eu-west-2 (bitnami image) 
  instance_type = "t2.micro"  # Change to the desired instance type
  tags = {
    Name = "howdyr53" 
}
}
