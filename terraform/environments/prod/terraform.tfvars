project_id  = "terraform-gcp-docker-lab"
region      = "europe-west1"
zone        = "europe-west1-b"
environment = "prod"
credentials_file = "~/.gcp/terraform-key.json"

network_name = "prod-vpc"
subnet_name  = "prod-subnet"
subnet_cidr  = "10.10.2.0/24"

instance_name = "prod-nginx-vm"
machine_type  = "e2-micro"
image         = "debian-cloud/debian-12"