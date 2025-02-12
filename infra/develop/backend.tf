terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.46.0"
    }
  }

  backend "s3" {
    bucket  = "practice-k8s-develop-tfstate"
    region  = "us-east-1"
    key     = "develop/terraform.tfstate"
    profile = "k8s_dev"
    encrypt = true
  }
}
