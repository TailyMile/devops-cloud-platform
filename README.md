![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4)
![GCP](https://img.shields.io/badge/Cloud-GCP-blue)
![Docker](https://img.shields.io/badge/Container-Docker-2496ED)
![Kubernetes](https://img.shields.io/badge/Orchestration-Kubernetes-326CE5)

# DevOps Cloud Platform Lab

Hands-on learning project focused on building a small cloud platform using modern DevOps tooling.

The platform evolves step-by-step from basic cloud infrastructure to a Kubernetes runtime with observability.

---

# Architecture Overview

Traffic flow:

Internet
→ GCP HTTP Load Balancer
→ Kubernetes Ingress
→ Service
→ Deployment
→ Pods

Observability:

Logs
Pods → Alloy → Loki

Metrics
Kubernetes / node exporters → Prometheus → Alertmanager

Visualization
Grafana reads data from Prometheus and Loki.

---

# Platform Stack

Infrastructure

* Terraform
* Google Cloud Platform
* GKE

Container Platform

* Docker
* Kubernetes
* Nginx example workload

Observability

* Prometheus
* Alertmanager
* Grafana
* Loki
* Alloy

CI/CD

* GitHub Actions
* GitHub Container Registry

---

# Repository Structure

```
devops-cloud-platform
│
├ docker
│
├ terraform
│  ├ modules
│  └ environments
│
├ k8s
│
├ monitoring
│
└ docs
   ├ architecture.md
   ├ learning-log.md
   ├ course-03-summary.md
   ├ course-04-summary.md
   └ course-05-summary.md
```

---

# Deployment

Initialize Terraform:

terraform init

Preview changes:

terraform plan

Deploy infrastructure:

terraform apply

Destroy infrastructure:

terraform destroy

---

# Documentation

Detailed project documentation is located in the `docs/` directory:

* architecture description
* learning progress log
* course summaries
