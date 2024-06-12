# Terraform AWS Infrastructure
![image](https://github.com/hasithacharith07/terraform-aws-infrastructure/assets/167498308/d5a5bbe0-012c-4c87-948f-832f06e0f74b)

This repository contains Terraform configuration files to set up AWS infrastructure as per the provided architecture diagram.

## Directory Structure

terraform-aws-infrastructure/
├── main.tf
├── variables.tf
├── outputs.tf
└── modules/
├── vpc/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── rds/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
└── ec2/
├── main.tf
├── variables.tf
└── outputs.tf


## Usage

1. Initialize Terraform:
    ```sh
    terraform init
    ```

2. Review the Plan:
    ```sh
    terraform plan
    ```

3. Apply the Plan:
    ```sh
    terraform apply
    ```

## Note

Ensure that you have the necessary AWS credentials configured in your environment.

