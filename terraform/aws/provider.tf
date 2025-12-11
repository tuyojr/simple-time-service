terraform {
  required_version = ">= 1.14.0"

  backend "s3" {
    bucket         = "BACKEND_BUCKET_NAME"
    key            = "terraform/state"
    region         = "BACKEND_REGION"
    dynamodb_table = "BACKEND_DYNAMODB_TABLE"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.26.0"
    }
  }
}
