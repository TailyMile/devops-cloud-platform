# Course 3 — Docker Platform Engineering

## Goal

Move from basic container usage to production-style container workflow.

## Implemented Components

### Image Build
- Dockerfile
- Multi-stage build
- Nginx-based runtime image

### Registry
- GitHub Container Registry (GHCR)
- Image publishing from GitHub Actions

### CI/CD
- Workflow trigger filtering
- Build cache
- `latest` and commit SHA tagging

### Runtime
- Docker Compose service definition
- Environment-based image tag selection
- Healthcheck
- CPU and memory limits

## Key Skills Practiced

- Docker image lifecycle
- Registry integration
- GitHub Actions basics
- Compose runtime design
- Production container practices

## Outcome

The repository now demonstrates a full container delivery flow:

Code  
→ Build  
→ Registry  
→ Runtime

This prepares the platform for Kubernetes deployment in Course 4.