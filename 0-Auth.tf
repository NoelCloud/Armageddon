provider "aws" {
  region = var.japan_region
}

provider "aws" {
    alias = "usa"
    region = var.us_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
