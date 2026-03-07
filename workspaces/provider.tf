terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.35.1"
    }
  }

    backend "s3" {
    bucket = "aws-remote-state-demo"
    key    = "workspace.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }

}

provider "aws" {
  # Configuration options
}