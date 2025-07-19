# Terraform Projects Collection

This repository contains several Terraform projects targeting different infrastructure scenarios, both on-premises and in the cloud. Below you will find a short description of each project/folder.

---

## 📁 Proxmox

**Description:**  
This folder contains Terraform code for managing resources in a private cloud based on Proxmox. Use these scripts to automate the creation, modification, and administration of virtual machines or other resources in a Proxmox environment.

**Status:**  
Functional project, used for infrastructure automation in the private cloud.

**Usage instructions:**  
1. Create a user in Proxmox with full privileges (Administrator role) for the resources you want to manage.
2. Create an API token for this user in the Proxmox web UI.
3. Use the user and token information to configure your Terraform provider file: provider.tf
4. Run the usual Terraform commands:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

---

## 📁 EC2_instances

**Description:**  
This folder contains Terraform code for creating EC2 instances in AWS. The project also aims to automate various customization tasks, such as configuring SSH access between instances and installing software.

**Status:**  
Ongoing task – development is in progress. New features are regularly added (e.g., SSH connectivity between instances).

**Usage instructions:**  
1. Fill in the required AWS variables (keys, region, etc.).
2. Run the Terraform commands:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```
3. Check the TODOs in the code files for features under development.

---

## 📁 3_tier_architecture

**Description:**  
This folder will contain Terraform code for implementing a 3-tier architecture (frontend, backend, database) in AWS. The goal is to fully automate the infrastructure deployment for an enterprise-grade application.

**Status:**  
Project not started yet, TODO.

**Planned steps:**  
- [ ] Define resources for each tier: frontend, backend, database
- [ ] Implement a load balancer
- [ ] Set up security and networking between tiers
- [ ] Test and document the solution

---

**Author:**  
[mihaicristian97](https://github.com/mihaicristian97)

