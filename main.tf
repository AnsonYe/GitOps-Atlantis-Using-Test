terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = "~> 5.0"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-hello-world-example"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
