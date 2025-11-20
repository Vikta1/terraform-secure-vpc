# Secure AWS VPC & EC2 Architecture Using Terraform

This project uses Terraform to build a secure AWS environment from scratch.  
It deploys a production-style Virtual Private Cloud (VPC) with isolated public and private subnets, a bastion host for controlled access, a private EC2 instance for internal application workloads, and all supporting network/security resources.

---

## 🚀 Project Overview

The goal of this project is to demonstrate how to design and provision a secure cloud architecture using Infrastructure-as-Code (IaC) with Terraform.  

This environment follows AWS best practices by:
- Separating public and private network layers  
- Restricting internet exposure  
- Enforcing least-privilege security  
- Using IAM + SSM instead of exposed SSH keys  
- Ensuring controlled internal connectivity  

---


Traffic Flow:
- Public internet → IGW → Bastion host  
- Private EC2 → NAT Gateway → Internet (outbound only)  
- Bastion → Private EC2 (SSH or SSM)  

---

## 🔐 Key Security Features

- **Private EC2 instance** with no public exposure  
- **SSH restricted** to your IP address only (for bastion)  
- **IAM Role + SSM Session Manager** for keyless and secure remote access  
- **NAT Gateway** prevents inbound internet access for private subnets  
- **Least-privilege security groups**  
- **Multi-AZ subnets** for high availability  

---

## 📦 Resources Created

### Networking
- VPC  
- Public subnets (x2)
- Private subnets (x2)
- Internet Gateway (IGW)
- NAT Gateway + Elastic IP  
- Route tables + associations  

### Compute
- Bastion EC2 Instance (public)
- Application EC2 Instance (private)

### Security
- Security groups for bastion + app
- IAM role and instance profile
- AWS SSM agent support for EC2 management

---

## 📁 Project Structure



