terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket       = "my-eks-terraform-statefile"
    key          = "eks-terraform.tfstate"
    use_lockfile = true
    region       = "us-west-2"
    encrypt      = true
  }
}
