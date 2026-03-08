# DevOps Cloud Platform — Architecture

This document describes the current architecture of the DevOps Cloud Platform repository.

---

# Infrastructure Architecture

Internet
   │
GCP VPC
   │
Firewall Rules
   │
Compute Engine VM
   │
Docker Runtime
   │
Nginx Container

---

# Infrastructure Provisioning

Infrastructure is provisioned using **Terraform**.

Terraform architecture:

Terraform CLI
     │
Remote State (GCS)
     │
Terraform Modules
     │
GCP Infrastructure

---

# Terraform Architecture

The Terraform configuration follows a **modular infrastructure layout**.

terraform
├ modules
│   ├ network
│   │
│   │  Creates:
│   │  - VPC network
│   │  - firewall rules
│   │
│   └ compute
│
│      Creates:
│      - Compute Engine VM
│
└ environments
    ├ dev
    │
    │  Infrastructure for development environment
    │
    └ prod
       Infrastructure for production environment

Each environment uses:

- shared Terraform modules
- independent remote state

---

# Remote State

Terraform state is stored in **Google Cloud Storage**.

GCS Bucket
   │
   ├ dev/terraform
   └ prod/terraform

This ensures:

- state isolation between environments
- safe collaboration
- CI/CD compatibility

---

# Current Platform Architecture (After Course 2)

Internet
   ↓
GCP VM
   ↓
Docker Engine
   ↓
Container Image
   ↓
Nginx Service

---

# Next Evolution Step

The next stage introduces **Docker Platform Engineering**.

The platform will evolve toward:

Terraform
   │
VM
   │
Docker Image
   │
Container Registry
   │
Application Container