variable "region" {
  description = "The AWS region"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs where the EKS cluster will be deployed"
  type        = list(string)
}

variable "node_group_name" {
  description = "The name of the node group"
  type        = string
}

variable "fargate_namespace" {
  description = "The Kubernetes namespace to use for Fargate"
  type        = string
}
