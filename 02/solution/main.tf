terraform {

  required_version = var.terraform_version

  required_providers {
    aws = {
      source  = var.aws_source
      version = var.aws_version
    }
  }
}


provider "aws" {
  region  = var.region
  profile = var.profile
}

