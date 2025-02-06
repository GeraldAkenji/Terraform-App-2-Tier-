# Terraform 2-Tier Application

## Overview
This repository contains Terraform configurations for deploying a two-tier application architecture. The setup consists of a front-end web tier and a back-end database tier in a cloud environment, ensuring high availability, scalability, and security.

## Architecture
- **Web Tier**: EC2 instances running a web server (e.g., Nginx, Apache) within an Auto Scaling Group.
- **Database Tier**: RDS (Relational Database Service) for persistent data storage.
- **Networking**: VPC with public and private subnets, NAT gateway for secure outbound internet access.
- **Security**: IAM roles, security groups, and least privilege access control.

## Prerequisites
Ensure you have the following before deploying:
- Terraform installed (`>= v1.0`)
- AWS CLI configured with appropriate credentials
- SSH key pair for accessing EC2 instances
- Basic knowledge of Terraform and AWS

## Deployment Steps
1. **Clone the Repository:**
   ```sh
   git clone https://github.com/GeraldAkenji/Terraform-App-2-Tier-.git
   cd Terraform-App-2-Tier-
   ```
2. **Initialize Terraform:**
   ```sh
   terraform init
   ```
3. **Plan the Deployment:**
   ```sh
   terraform plan
   ```
4. **Apply the Configuration:**
   ```sh
   terraform apply -auto-approve
   ```
5. **Retrieve Outputs:**
   ```sh
   terraform output
   ```
   Use the output values (e.g., public IP) to access the web application.

## Destroying the Infrastructure
To delete all resources created by Terraform, run:
```sh
terraform destroy -auto-approve
```

## Directory Structure
```
Terraform-App-2-Tier-
│── main.tf           # Main Terraform configuration
│── variables.tf      # Input variables
│── outputs.tf        # Output values
│── provider.tf       # AWS provider configuration
│── vpc.tf            # VPC and networking resources
│── ec2.tf            # Web tier EC2 instance configuration
│── rds.tf            # Database tier configuration
│── security.tf       # Security groups and IAM roles
```

## Configuration
Modify `variables.tf` to customize the deployment, such as instance types, region, and CIDR blocks.

## Author
[Gerald Akenji](https://github.com/GeraldAkenji)



