terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
provider "aws" {
    region = "us-eat-1"

  default_tags{
    tags = {
        owner= "srivastav"
    }
  }
}