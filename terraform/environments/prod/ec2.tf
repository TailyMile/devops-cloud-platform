# module "compute" {
#   source = "../../modules/compute"

#   instance_name = var.instance_name
#   machine_type  = var.machine_type
#   zone          = var.zone
#   image         = var.image
#   subnet_name   = module.network.subnet_name
# }