# DevOps Cloud Platform — Learning Log

## Course Progress

| Course | Topic                        | Status |
|------|-----------------------------|--------|
| 1 | Cloud Infrastructure           | ✅ |
| 2 | Terraform Production Patterns  | ✅ |
| 3 | Docker Platform Engineering    | ✅ |
| 4 | Kubernetes Runtime (GKE)       | ✅ |
| 5 | Observability                  | ⏳ |

---

## Latest Update

### Course 4 — Kubernetes Runtime (GKE)
Status: ✅ Completed

Implemented:
- GKE cluster provisioning via Terraform
- Node pool configuration
- VPC networking with secondary IP ranges for Pods and Services
- Kubernetes Deployment for Nginx service
- ClusterIP Service
- GKE Ingress with external HTTP Load Balancer
- Readiness and liveness probes
- Resource requests and limits
- Rolling update deployment strategy
- Topology spread constraints for zone distribution
- Horizontal Pod Autoscaler (HPA)
- PodDisruptionBudget for availability protection

Key outcomes:
- Runtime migrated from Docker Compose to Kubernetes
- Application now runs on a multi-zone GKE cluster
- External traffic handled via GCP HTTP Load Balancer
- Platform supports autoscaling and safe rolling deployments
- Repository now represents a production-style Kubernetes runtime platform

### Course 3 — Docker Platform Engineering
Status: ✅ Completed

Implemented:
- Production-style Dockerfile for Nginx service
- Multi-stage Docker build
- GHCR image publishing
- GitHub Actions workflow for image build and push
- Image tagging strategy: `latest` + commit SHA
- Build cache in GitHub Actions
- Docker Compose runtime
- Environment-based image tag configuration
- Container healthcheck
- Runtime CPU and memory limits

Key outcomes:
- Repository now includes a full container lifecycle
- CI builds and publishes images automatically
- Runtime moved from ad-hoc `docker run` to service-based Compose model
- Platform is ready for transition to Kubernetes

---

## Previous Updates

### Course 2 — Terraform Production Patterns
Status: ✅ Completed

Implemented:
- Terraform restructuring
- reusable layout
- environment-ready project organization

### Course 1 — Cloud Infrastructure Fundamentals
Status: ✅ Completed

Implemented:
- VPC
- firewall rules
- VM provisioning
- startup bootstrap
- Docker runtime on VM
- Nginx deployment