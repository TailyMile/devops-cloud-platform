project_id       = "terraform-gcp-docker-lab"
region           = "europe-west1"
environment      = "prod"
credentials_file = "~/.gcp/terraform-key.json"

network_name = "prod-vpc"
subnet_name  = "prod-subnet"
subnet_cidr  = "10.10.2.0/24"

machine_type = "e2-medium"

cluster_name = "devops-platform-cluster"
node_locations = [
  "europe-west1-b",
  "europe-west1-c",
  "europe-west1-d"
]
node_count      = 1
release_channel = "REGULAR"

services_range_name = "gke-services"
services_range_cidr = "10.30.0.0/20"
pods_range_cidr     = "10.20.0.0/16"
pods_range_name     = "gke-pods"