terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = "~> 5.0"
  }
}

provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      created_by = "terraform"
      workspace = terraform.workspace
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}
