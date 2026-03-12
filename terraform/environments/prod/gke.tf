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