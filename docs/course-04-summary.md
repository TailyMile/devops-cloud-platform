# Course 4 — Kubernetes Runtime (GKE)

## Implemented Components

Infrastructure

- GKE cluster via Terraform
- Node pool
- VPC networking
- secondary IP ranges for pods and services

Runtime

- Deployment (nginx)
- Service (ClusterIP)
- Ingress (GCP Load Balancer)

Reliability

- readinessProbe
- livenessProbe
- resource requests/limits
- rolling update strategy
- topology spread constraints

Scaling

- Horizontal Pod Autoscaler

Availability

- PodDisruptionBudget