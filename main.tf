provider "aws" {
	region = "ap-south-1"
		}
terraform {
  backend "s3" {
    bucket = "backend-s3-terraform-bucket"
    key    = "terraform"
    region = "ap-south-1"
  }
}

resource "aws_instance" "tf_new_inst" {
	ami = "ami-0597375488017747e"
	instance_type = "t2.micro"
	tags = {
		Name = "tf_new_inst"
	}
}

