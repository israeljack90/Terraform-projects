# configure AWS provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# stores teraform state files in S3
terraform {
  backend "s3" {
    bucket = "israel-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}