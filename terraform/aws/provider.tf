terraform {
  required_version = ">= 1.14.0"

  backend "s3" {
    bucket         = "particle41-backend"
    key            = "terraform/state"
    region         = "us-east-1"
    dynamodb_table = "particle41-lock-table"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.26.0"
    }
  }
}
