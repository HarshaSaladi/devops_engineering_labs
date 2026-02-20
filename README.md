Terraform AWS Multi-Workspace Infrastructure Project
Project Overview
This project demonstrates how to provision AWS infrastructure using Terraform Infrastructure as Code (IaC) principles.

A single Terraform codebase is reused across multiple environments using Terraform Workspaces.
Depending on the selected workspace, a different application is deployed on an EC2 instance.
default workspace → Apache Web Server
jenkins workspace → Jenkins Automation Server
This approach ensures modular, reusable, and scalable infrastructure management.

Architecture Overview
The project provisions the following AWS resources:
VPC
Subnet
Internet Gateway
Route Table
Security Group
EC2 Instance
Application deployment using user_data
State is stored remotely in an S3 backend.

terraform-project/
│
├── backend.tf          # Remote backend configuration
├── provider.tf         # AWS provider configuration
├── main.tf             # Root module
├── variables.tf        # Variable declarations
├── terraform.tfvars    # Variable values
├── outputs.tf          # Output values
│
└── modules/
    ├── ec2/            # EC2 module
    ├── vpc/            # VPC module
    └── sg/             # Security Group module


Terraform Backend: Stores state in Amazon S3, Enables collaboration and Prevents state corruption

Reusable modules are created for: VPC, Security Group ,EC2 and This improves maintainability and scalability

Workspaces allow multiple environments using the same code.

Application deployment is controlled using conditional logic:
Key Concepts Demonstrated:
Infrastructure as Code (IaC)
Terraform Modules
Remote State Backend
Terraform Workspaces
Conditional Expressions
Automated Application Deployment
AWS Networking Fundamentals





Harsha Saladi
DevOps & Cloud Enthusiast