variable "region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name tag for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "public_subnet_name" {
  description = "The name tag for the public subnet"
  type        = string
}

variable "private_subnet_cidr_a" {
  description = "The CIDR block for the first private subnet"
  type        = string
}

variable "private_subnet_name_a" {
  description = "The name tag for the first private subnet"
  type        = string
}

variable "private_subnet_cidr_b" {
  description = "The CIDR block for the second private subnet"
  type        = string
}

variable "private_subnet_name_b" {
  description = "The name tag for the second private subnet"
  type        = string
}

variable "igw_name" {
  description = "The name tag for the internet gateway"
  type        = string
}

variable "public_route_table_name" {
  description = "The name tag for the public route table"
  type        = string
}

variable "nat_name" {
  description = "The name tag for the NAT gateway"
  type        = string
}

variable "private_route_table_name" {
  description = "The name tag for the private route table"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
}

variable "fargate_namespace" {
  description = "The Kubernetes namespace for Fargate"
  type        = string
}
