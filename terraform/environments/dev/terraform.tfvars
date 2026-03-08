project_id  = "terraform-gcp-docker-lab"
region      = "europe-west1"
zone        = "europe-west1-b"
environment = "dev"
credentials_file = "~/.gcp/terraform-key.json"


network_name = "dev-vpc"
subnet_name  = "dev-subnet"
subnet_cidr  = "10.10.1.0/24"

instance_name = "dev-nginx-vm"
machine_type  = "e2-micro"
image         = "debian-cloud/debian-11"