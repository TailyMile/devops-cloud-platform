Repository purpose:
Production-style DevOps platform portfolio project.

# DevOps Cloud Platform — Learning Log

This document tracks the evolution of the **DevOps Cloud Platform repository** and the skills acquired while building it.

The repository grows incrementally as new platform components are introduced.

---

# Course Progress

| Course   | Topic                             | Status |
|--------|-----------------------------------|--------|
| Course 1 | Cloud Infrastructure Fundamentals | ✅ Completed |
| Course 2 | Terraform Production Patterns | ✅ Completed |
| Course 3 | Docker Platform Engineering | ⏳ In Progress |
| Course 4 | Kubernetes (GKE) | ⏳ Planned |
| Course 5 | Observability | ⏳ Planned |
| Course 6 | DevOps Platform | ⏳ Planned |

---

# Platform Architecture Evolution

### Stage 1


Internet
→ VM
→ Docker
→ Nginx


### Stage 2


Internet
→ Load Balancer
→ Kubernetes
→ Application Pods


### Stage 3


Internet
→ Load Balancer
→ Kubernetes
→ CI/CD
→ Monitoring stack


---

# Course History

---

# Course 1 — Cloud Infrastructure Fundamentals

## Objective

Deploy cloud infrastructure using Terraform and run a containerized service.

## Technologies

Terraform  
Google Cloud Platform  
Compute Engine  
Docker  
Nginx

## Infrastructure

Terraform provisions:

- VPC network
- firewall rules
- Compute Engine VM
- VM bootstrap script

Startup script:

- installs Docker
- runs an Nginx container

## Architecture


Internet
│
Firewall (HTTP + SSH)
│
Compute Engine VM
│
Docker
│
Nginx container


## Skills Acquired

Cloud infrastructure provisioning  
Terraform resource management  
Cloud networking basics  
VM bootstrap automation  
Container runtime usage

## Repository Structure After Course 1


terraform
├ main.tf
├ network.tf
├ vm.tf
├ variables.tf
└ outputs.tf


---

# Course 2 — Terraform Production Patterns

## Objective

Refactor Terraform configuration into a **production-style infrastructure layout**.

## Technologies

Terraform modules  
GCS backend  
Environment-based infrastructure

## Improvements Introduced

Terraform configuration refactored into reusable modules:


modules/network
modules/compute


Environment-based infrastructure introduced:


environments/dev
environments/prod


Remote Terraform state configured using **GCS backend**.

Each environment maintains its own isolated state.

## Architecture


Terraform CLI
│
Remote State (GCS)
│
Terraform Modules
│
GCP Infrastructure


## Skills Acquired

Terraform module architecture  
Environment separation  
Remote state management  
Terraform backend configuration  
Module outputs and dependency wiring  
Infrastructure repository structuring

## Repository Structure After Course 2


terraform
├ modules
│ ├ network
│ └ compute
│
└ environments
├ dev
└ prod


---

# Next Course

Course 3 — Docker Platform Engineering.

The platform will evolve from **startup-script container execution** toward a proper **container build and registry workflow**.