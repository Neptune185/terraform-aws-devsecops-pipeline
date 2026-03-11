terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "security_reports" {
  bucket = "kevin-devsecops-terraform-security-reports"
}

resource "aws_s3_bucket_versioning" "security_reports_versioning" {
  bucket = aws_s3_bucket.security_reports.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "security_reports_encryption" {
  bucket = aws_s3_bucket.security_reports.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}