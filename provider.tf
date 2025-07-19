provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" { 
    bucket       = "hcl-hackathon-terraform-state-bucket2"
    key          = "terraform/state/terraform.tfstate"
    region       = "us-west-1"
   
    
  }
}
