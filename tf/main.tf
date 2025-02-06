terraform {
  required_version = ">= 0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  backend "s3" {
    bucket         = "stack0852-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-west-2"
  default_tags {
    tags = {
      Owner   = "e180887"
      Project = "eks-test-cluster"
    }
  }
}




module "network" {
  source = "./network"

  region                  = var.region
  vpc_cidr                = var.vpc_cidr
  vpc_name                = var.vpc_name
  nat_name                = var.nat_name
  public_subnet_cidr      = var.public_subnet_cidr
  public_subnet_name      = var.public_subnet_name
  private_subnet_cidr_a   = var.private_subnet_cidr_a
  private_subnet_name_a   = var.private_subnet_name_a
  private_subnet_cidr_b   = var.private_subnet_cidr_b
  private_subnet_name_b   = var.private_subnet_name_b
  igw_name                = var.igw_name
  public_route_table_name = var.public_route_table_name
  private_route_table_name = var.private_route_table_name
}

module "eks" {
  source = "./eks"

  cluster_name    = var.cluster_name
  vpc_id         = module.network.vpc_id
  subnet_ids     = concat(module.network.private_subnet_ids_a, module.network.private_subnet_ids_b)
  region         = var.region
  node_group_name = var.node_group_name


}