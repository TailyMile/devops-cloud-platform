# DevOps Cloud Platform — Learning Log

## Course Progress

| Course   | Topic                             | Status          |
|----------|-----------------------------------|-----------------|
| Course 1 | Cloud Infrastructure Fundamentals | ✅ Completed     |
| Course 2 | Terraform Production Patterns     | ✅ Completed     |
| Course 3 | Docker Platform Engineering       | ✅ Completed     |
| Course 4 | Kubernetes (GKE)                  | ⏳ Next          |
| Course 5 | Observability                     | ⏳ Planned       |
| Course 6 | DevOps Platform                   | ⏳ Planned       |

---

## Latest Update

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