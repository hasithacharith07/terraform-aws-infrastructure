# variables.tf

variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "192.168.0.0/16"
}

variable "public_subnets" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["192.168.1.0/24", "192.168.2.0/24"]
}

variable "private_subnets" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["192.168.3.0/24", "192.168.4.0/24"]
}

