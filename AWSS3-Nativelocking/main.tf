provider "aws" {
  region = var.aws_region
}

# Create the S3 bucket for Terraform state
resource "aws_s3_bucket" "tf_state" {
  bucket = var.s3_bucket_name
  force_destroy = true

  tags = {
    Name        = "Terraform State Bucket"
    Environment = var.environment
  }
}

# Enable versioning on the bucket
resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.tf_state.id

  versioning_configuration {
    status = "Enabled"
  }
}
