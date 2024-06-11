# modules/rds/variables.tf

variable "private_subnets" {
  description = "The private subnets for RDS"
  type        = list(string)
}

variable "security_group_id" {
  description = "The security group ID for RDS"
  type        = string
}

