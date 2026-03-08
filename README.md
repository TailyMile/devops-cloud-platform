![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4)
![GCP](https://img.shields.io/badge/Cloud-GCP-blue)
![Docker](https://img.shields.io/badge/Container-Docker-2496ED)

# Terraform GCP Docker Lab

Simple cloud infrastructure built with Terraform.

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

## Stack

- Terraform
- Google Cloud Platform
- Compute Engine
- Docker
- Nginx

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