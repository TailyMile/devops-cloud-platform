# Architecture

This project demonstrates a minimal cloud platform built with Terraform and GCP.

Components:

- Terraform for Infrastructure as Code
- GCP VPC networking
- Compute Engine VM
- Docker runtime
- Nginx container deployment

Bootstrap is implemented via startup script.


## Infrastructure Diagram

```mermaid
flowchart TD

    Internet --> Firewall

    Firewall --> VM[Compute Engine VM]

    VM --> Docker

    Docker --> Nginx[Nginx Container]

    Terraform --> VPC[VPC Network]
    Terraform --> Firewall
    Terraform --> VM
