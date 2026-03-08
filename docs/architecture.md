# Architecture

## Current Stage — After Course 3

### Infrastructure Layer

Internet  
↓  
GCP VM  
↓  
Docker Engine  

### Build and Delivery Layer

GitHub Repository  
↓  
GitHub Actions  
↓  
Docker Build  
↓  
GHCR Image Registry  

### Runtime Layer

Docker Compose  
↓  
Web Service  
↓  
Nginx Container  
↓  
Healthcheck + Resource Limits  

---

## Current Image Flow

Source Code  
↓  
Dockerfile  
↓  
Image Build  
↓  
Tagging (`latest` + commit SHA)  
↓  
Push to GHCR  
↓  
Compose Deployment  

---

## Next Stage — Course 4

Internet  
↓  
Load Balancer / Service  
↓  
Kubernetes Cluster  
↓  
Pods  
↓  
Container Image from GHCR