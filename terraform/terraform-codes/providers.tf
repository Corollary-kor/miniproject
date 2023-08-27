terraform {
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.22.0"
    }
  }

    backend "s3" {
    bucket = "alice-k8s-s3-tf-state"
    key = "terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "alice-k8s-ddb-tf-lock"
    encrypt = "true"
  }
}