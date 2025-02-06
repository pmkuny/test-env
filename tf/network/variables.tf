variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "public_subnet_name" {
  description = "Name tag for public subnet"
  type        = string
}

variable "private_subnet_cidr_a" {
  description = "CIDR block for private subnet in AZ a"
  type        = string
}

variable "private_subnet_name_a" {
  description = "Name tag for private subnet in AZ a"
  type        = string
}

variable "private_subnet_cidr_b" {
  description = "CIDR block for private subnet in AZ b"
  type        = string
}

variable "private_subnet_name_b" {
  description = "Name tag for private subnet in AZ b"
  type        = string
}

variable "igw_name" {
  description = "Name tag for Internet Gateway"
  type        = string
}

variable "public_route_table_name" {
  description = "Name tag for public route table"
  type        = string
}

variable "nat_name" {
  description = "Name tag for NAT Gateway"
  type        = string
}

variable "private_route_table_name" {
  description = "Name tag for private route table"
  type        = string
}
