# main.tf

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "rds" {
  source = "./modules/rds"
}

module "ec2" {
  source = "./modules/ec2"
}

