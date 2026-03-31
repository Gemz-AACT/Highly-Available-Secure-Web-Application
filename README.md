# Highly Available & Secure Web Application on AWS with Terraform

This project is a step-by-step build of a highly available and secure web application on AWS using Terraform.

## Planned Components
- Application Load Balancer (ALB)
- Auto Scaling EC2 instances
- Amazon RDS (encrypted, Multi-AZ)
- AWS WAF
- CloudWatch monitoring
- IAM roles
- Secrets Manager

## Project Files
- `main.tf` - provider and shared configuration
- `vpc.tf` - networking resources
- `security.tf` - security controls
- `database.tf` - RDS and secrets
- `compute.tf` - ALB and Auto Scaling
- `variables.tf` - input variables
- `outputs.tf` - output values

## Status
Step 1 complete: Terraform environment setup started.
*****
Step 2 complete: Added Terraform provider configuration and networking foundation, including VPC, public/private subnets, Internet Gateway, NAT Gateway, and route tables.
*****
Step 3 complete: Added the security layer, including IAM role and instance profile for EC2, security groups for ALB/EC2/RDS, and AWS WAF protection with managed rules and rate limiting.
*****
Step 4 complete: Added the database layer with encrypted Multi-AZ PostgreSQL RDS, private DB subnet group, Secrets Manager credential storage, and Terraform-generated password management.
*****
