terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-anas"
    key            = "env/dev/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-locks-anas"
    encrypt        = true
  }
}

