terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

terraform {
  cloud {
    organization = "skuller"

    workspaces {
      name = "terra-house-v1"
    }
  }
}


provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  lower     = true
  upper     = false
  length    = 32
  special   = false
}

resource "aws_s3_bucket" "example" {
 bucket = random_string.bucket_name.result

}

output "random_bucket_name" {
  value = random_string.bucket_name.result
}