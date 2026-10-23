terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40"
    }
  }
  backend "s3" {
    bucket  = "course-project-terraform-states-1"
    encrypt = true
    key     = "terraform/microservice-course-project/terraform.tfstate"
    region  = "us-east-2"
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
