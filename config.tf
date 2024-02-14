# variable "AWS_ACCESS_KEY_ID" {}
# variable "AWS_SECRET_ACCESS_KEY" {}
# variable "AWS_DEFAULT_REGION" {}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
  backend "s3" {
    # bucket         = "devopsdemobucket01"
    # key            = "state/terraform.tfstate"
    # region         = "ca-central-1"
    # encrypt        = true
    # dynamodb_table = "devtoolhub"
  }
}

provider "aws" {
  # Configuration options
  region     = var.region
  # access_key = var.AWS_ACCESS_KEY_ID
  # secret_key = var.AWS_SECRET_ACCESS_KEY
}