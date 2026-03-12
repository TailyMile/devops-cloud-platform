module "network" {
  source = "../../modules/network"

  project_id          = var.project_id
  region              = var.region
  network_name        = var.network_name
  subnet_name         = var.subnet_name
  subnet_cidr         = var.subnet_cidr
  environment         = var.environment
  services_range_name = var.services_range_name
  services_range_cidr = var.services_range_cidr
  pods_range_name     = var.pods_range_name
  pods_range_cidr     = var.pods_range_cidr
}