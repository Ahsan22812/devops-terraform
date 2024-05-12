terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


# Configure the S3 backend and DynamoDb table
terraform {
  backend "s3" {
    bucket         = "devops-project-nodejs-app"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devops-project-terraform"
  }
}
