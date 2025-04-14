# CST8918 Final Project - DevOps: Infrastructure as Code (IaC)

## Overview
This is the final project for the **CST8918 - DevOps: Infrastructure as Code** course, which involves deploying the **Remix Weather Application** using **Terraform** to manage Azure resources, **GitHub Actions** for CI/CD, and **Azure Kubernetes Service (AKS)** for container orchestration. The project focuses on automating the deployment of infrastructure and the weather app across multiple environments (dev, test, prod) using modern DevOps practices.

## Team Members
- **[Your Name]** - [GitHub Profile](https://github.com/yourusername)
- **[Member 2 Name]** - [GitHub Profile](https://github.com/member2)
- **[Member 3 Name]** - [GitHub Profile](https://github.com/member3)
- **[Member 4 Name]** - [GitHub Profile](https://github.com/member4)

## Project Structure
```plaintext
cst8918-final-project/
│
├── remix-weather-app/                # (Not included here - use your Week 3 version)
│
├── terraform/
│   ├── backend/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── aks/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── app/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── environments/
│   │   ├── dev/main.tf
│   │   ├── test/main.tf
│   │   └── prod/main.tf
│
├── .github/
│   └── workflows/
│       ├── static-analysis.yml
│       ├── plan-check.yml
│       ├── terraform-apply.yml
│       ├── docker-build.yml
│       └── deploy-app.yml
│
├── README.md
└── main.tf                           # Root Terraform entry point
```
