# Resource Group Module
module "resource_group" {
  source = "./modules/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

# Network Module
module "network" {
  source = "./modules/network"

  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  subnet_name         = var.subnet_name
  subnet_prefixes     = var.subnet_prefixes
  tags                = var.tags
}

# AKS Module
module "aks" {
  source = "./modules/aks"

  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  cluster_name        = var.cluster_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = null
  subnet_id           = module.network.subnet_id
  node_count          = var.node_count
  vm_size             = var.vm_size
  tags                = var.tags
}

# NGINX Ingress Module
module "nginx_ingress" {
  source     = "./modules/nginx_ingress"
  depends_on = [module.aks]
}
