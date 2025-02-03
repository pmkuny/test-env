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

resource "aws_s3_bucket" "terraform_state" {
  bucket = "stack0852-terraform-state-bucket"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
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
  private_subnet_cidr     = var.private_subnet_cidr  # Fix typo from private_subnet_cid
  private_subnet_name     = var.private_subnet_name
  igw_name                = var.igw_name
  public_route_table_name = var.public_route_table_name
  private_route_table_name = var.private_route_table_name
}

module "eks" {
  source = "./eks"

  cluster_name      = var.cluster_name
  vpc_id            = module.network.vpc_id
  subnet_ids        = module.network.public_subnet_ids
  region            = var.region
  node_group_name   = var.node_group_name
  fargate_namespace = var.fargate_namespace  # Fix from eks_fargate_namespace
}