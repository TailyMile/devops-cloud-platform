![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4)
![GCP](https://img.shields.io/badge/Cloud-GCP-blue)
![Docker](https://img.shields.io/badge/Container-Docker-2496ED)

# Terraform GCP Docker Lab

Simple cloud infrastructure built with Terraform.

## Current Platform Status

Completed:

- Course 1 — Cloud Infrastructure Fundamentals
- Course 2 — Terraform Production Patterns
- Course 3 — Docker Platform Engineering

Current implemented capabilities:

- Terraform-based VM infrastructure
- Containerized Nginx service
- Multi-stage Docker build
- GitHub Actions image build pipeline
- GHCR image publishing
- Docker Compose runtime
- Container healthcheck
- Runtime resource limits

## Architecture

Terraform provisions:

- GCP VPC network
- Firewall rules (SSH, HTTP)
- Compute Engine VM
- Startup script bootstrap

The VM automatically installs:

- Docker
- Nginx container

## Result

After running:

terraform apply

A VM is created and Nginx becomes available on port 80.

## Platform Stack

Infrastructure

- Terraform
- Google Cloud Platform
- GKE

Container Platform

- Docker
- Kubernetes

CI/CD

- GitHub Actions
- GitHub Container Registry

Reliability

- health probes
- rolling deployments
- autoscaling
- PodDisruptionBudget

## Learning Goals

- Infrastructure as Code
- VM bootstrap automation
- Container deployment
- Basic cloud networking

## Quick Start

Initialize terraform:

terraform init

Preview infrastructure:

terraform plan

Create infrastructure:

terraform apply

Destroy infrastructure:

terraform destroy