# modules/ec2/variables.tf

variable "public_subnet" {
  description = "The public subnet for SSM Host"
  type        = string
}

variable "private_subnet" {
  description = "The private subnet for the server"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID for EC2 instances"
  type        = string
}

