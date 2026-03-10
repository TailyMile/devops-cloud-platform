module "network" {
  source = "../../modules/network"

  project_id   = var.project_id
  region       = var.region
  network_name = var.network_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  environment  = var.environment
  services_range_name    = var.services_range_name
  services_range_cidr = var.services_range_cidr
  pods_range_name    = var.pods_range_name
  pods_range_cidr = var.pods_range_cidr
}

# module "compute" {
#   source = "../../modules/compute"

#   instance_name = var.instance_name
#   machine_type  = var.machine_type
#   zone          = var.zone
#   image         = var.image
#   subnet_name   = module.network.subnet_name
# }

module "gke_cluster" {
  source = "../../modules/gke-cluster"

  project_id          = var.project_id
  region              = var.region
  cluster_name        = var.cluster_name
  network             = module.network.network_name
  subnetwork          = module.network.subnet_name
  node_locations      = var.node_locations
  node_count          = var.node_count
  machine_type        = var.machine_type
  release_channel     = var.release_channel
  pods_range_name     = module.network.pods_range_name
  services_range_name = module.network.services_range_name
}