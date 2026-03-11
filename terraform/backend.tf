terraform {
  backend "s3" {
    bucket         = "neptune185-terraform-state-2026"
    key            = "terraform-aws-devsecops-pipeline/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}