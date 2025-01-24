terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<= 5.72.1"
    }
  }
}

provider "aws" {
  region = var.region
  skip_requesting_account_id = true

  default_tags {
    tags = {
      Environment = "CloudFactsApp"
    }
  }
}