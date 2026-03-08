# DevOps Cloud Platform — Learning Log

This document tracks the progress of building the **DevOps Cloud Platform** repository and the skills acquired during the learning process.

---

## Overview

Goal: build a production-style DevOps platform while learning modern cloud engineering tools.

Primary stack:

* Terraform
* Google Cloud Platform (GCP)
* Docker
* Kubernetes
* CI/CD
* Observability

The repository evolves incrementally as new platform components are introduced.

---

# Course Progress

| Course   | Topic                             | Status      |
| -------- | --------------------------------- | ----------- |
| Course 1 | Cloud Infrastructure Fundamentals | ✅ Completed |
| Course 2 | Terraform Production Patterns     | ⏳ Planned   |
| Course 3 | Docker Platform Engineering       | ⏳ Planned   |
| Course 4 | Kubernetes (GKE)                  | ⏳ Planned   |
| Course 5 | Observability                     | ⏳ Planned   |
| Course 6 | DevOps Platform                   | ⏳ Planned   |

---

# Course 1 — Cloud Infrastructure Fundamentals

## Objective

Create infrastructure using Terraform and deploy a containerized web service.

## Technologies Used

* Terraform
* GCP Compute Engine
* GCP VPC networking
* Docker
* Nginx container

---

## Infrastructure Built

Terraform provisions:

* VPC network
* Firewall rules
* Compute Engine VM
* Startup bootstrap script

The startup script automatically:

* installs Docker
* runs an Nginx container

---

## Architecture

```
Internet
   │
Firewall (HTTP + SSH)
   │
Compute Engine VM
   │
Docker
   │
Nginx container
```

Infrastructure is deployed with:

```
terraform apply
```

---

## Skills Acquired

Cloud infrastructure provisioning
Terraform resource management
Cloud networking basics (VPC, firewall)
VM bootstrap automation
Container runtime usage (Docker)
Service deployment inside containers

---

## Terraform Workflow Practiced

```
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

---

# Repository Structure After Course 1

```
devops-cloud-platform
│
├ terraform
│   ├ main.tf
│   ├ network.tf
│   ├ vm.tf
│   ├ variables.tf
│   └ outputs.tf
│
├ docs
│   ├ architecture.md
│   └ learning-log.md
│
├ scripts
│
└ README.md
```

---

# Next Step — Course 2

Terraform Production Patterns.

Topics:

* Terraform modules
* Remote state (GCS)
* Environment separation
* Reusable infrastructure modules

Repository will evolve toward a **production-grade Terraform structure**.

---

# Platform Evolution Roadmap

### Stage 1

```
Internet
 → VM
 → Docker
 → Nginx
```

### Stage 2

```
Internet
 → Load Balancer
 → Kubernetes
 → Application Pods
```

### Stage 3

```
Internet
 → Load Balancer
 → Kubernetes
 → CI/CD
 → Monitoring stack
```

---

# Long-Term Goal

Develop a full **DevOps Cloud Platform repository** demonstrating:

* Infrastructure as Code
* Containerized application deployment
* Kubernetes platform engineering
* CI/CD automation
* Monitoring and observability

The repository serves as a **DevOps engineering portfolio project**.
