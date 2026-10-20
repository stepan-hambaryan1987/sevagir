terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.20.0"
    }
  }
}

provider "aws" {
  region     = 
  access_key = 
  secret_key = 
}

locals {
  dev = {
    vpc_cidr = "10.10.0.0/16"

    public_subnets = {
      pub-1 = "10.10.1.0/24"
      pub-2 = "10.10.2.0/24"
    }

    private_subnets = {
      priv-1 = "10.10.3.0/24"
      priv-2 = "10.10.4.0/24"
    }
    ports = [22, 80, 443]
  }
}

module "vpc-dev" {
  source = "git@github.com:stepan-hambaryan1987/terraform-forEach-aws.git//terraform-aws-forEach"

  vpc_ciders             = local.dev.vpc_cidr
  public_subnets_ciders  = local.dev.public_subnets
  private_subnets_ciders = local.dev.private_subnets
  allowed_ports          = local.dev.ports
  env                    = "dev"
}


# ?ref=v2.0.0"
# Availability zones for each subnet
# azs = {
#   pub-1  = "us-east-1a"
#   pub-2  = "us-east-1b"
#   priv-1 = "us-east-1a"
#   priv-2 = "us-east-1b"
# }