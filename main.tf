terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Simple S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "tf-clooud-s3-bucket-12345" # must be globally unique
  acl    = "private"
}

# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
