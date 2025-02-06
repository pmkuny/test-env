variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS cluster and Fargate profile"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the Fargate node group"
  type        = string
}

variable "fargate_namespace" {
  description = "Kubernetes namespace for Fargate workloads"
  type        = string
}
