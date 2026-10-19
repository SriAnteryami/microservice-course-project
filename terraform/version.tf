terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40"
    }
  }
}
provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner = "srivastav"
    }
  }
}

variable "region" {
  description = "aws region"
  default     = "us-east-1"
}