# DevOps Cloud Platform — Architecture

This document describes the architecture of the **DevOps Cloud Platform** built during the training program.
The platform demonstrates a production-style Kubernetes deployment with integrated observability.

---

# Traffic Flow

Internet → GCP HTTP Load Balancer → Kubernetes Ingress → Service → Deployment → Pods → Container

User traffic enters the platform through the Google Cloud HTTP Load Balancer.
The request is routed into the Kubernetes cluster via Ingress and forwarded to Services which route traffic to application Pods managed by Deployments.

---

# Workload Layer

Containerized Nginx application runs inside Kubernetes Deployments.

Platform capabilities implemented:

* containerized application runtime
* rolling update strategy
* readiness and liveness probes
* resource requests and limits
* horizontal pod autoscaling
* pod disruption budgets
* topology spread constraints

These mechanisms simulate a production Kubernetes workload environment.

---

# Logging Pipeline

Pods → Alloy → Loki

Container logs from all nodes are collected by Alloy running as a DaemonSet.
Alloy enriches logs with Kubernetes metadata (namespace, pod, container, node) and forwards them to Loki for storage and indexing.

Logs can then be queried in Grafana using LogQL.

---

# Metrics Pipeline

Kubernetes / node / workload exporters → Prometheus

Prometheus collects metrics from multiple sources inside the cluster:

* kube-state-metrics
* node-exporter
* Kubernetes API
* application workloads

Prometheus evaluates recording rules and alert rules based on these metrics.

---

# Alerting Pipeline

Prometheus → Alertmanager

When alert conditions defined in PrometheusRule resources are triggered, Prometheus sends alerts to Ale
