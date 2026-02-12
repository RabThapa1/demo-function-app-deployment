# Demo Function App Deployment with Terraform & GitHub Actions

This repository demonstrates a simple end-to-end **Azure Function App deployment** using **Terraform** for infrastructure provisioning and **GitHub Actions** for CI/CD automation. The goal is to showcase best practices in **Infrastructure as Code (IaC)**, environment structuring, modular (Following DRY principles) and deployment automation.

---

## Repository Structure
-**app**: Contains Sample python Azure Function with basic logic.
-**tf**: Contains Terraform configuration to deploy Storage Account, App Service Plan and Azure Function App. 
-**workflows**: Contains Yaml pipeline to deploy IaC and deploy python script to Azure Function App

## Design Consideration
- **Reusable Module** : A single terraform module provisions **Storage Account**, **App Service Plan** and **Azure Function App**. This module creates a template that can be used to deploy mutiple instances and across various environments. 
- **Parameterized Deployment**: Environment-specific values (like resource names, SKUs, and settings) can be passed at runtime, enabling **repeatable and consistent deployments** for dev, test, and prod. In this demo I have opted to use **dev.tfvars** for **demonstration purpose only**. I would use environment varrables to pass the values to the input variables. 
- **Separation of Concerns**: Terraform code and application code are separated for maintainability and clarity.


## Notes:
- This repository is for **demonstration purpose only** and hasn't been deployed to a **real Azure environment**
- It is intended to showcase **Terraform Modules**, **Parametrized Deployment**, and **CI/CD Practises**.





