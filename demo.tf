terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0376ec8eacdf70aae"
  instance_type = "t2.micro"
  tags = {
    Name = "tftest"
  }
}
resource "aws_s3_bucket" "d" {
  bucket = "kk-77-task"

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}