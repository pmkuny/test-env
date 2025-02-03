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

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "The name tag for the private subnet"
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
