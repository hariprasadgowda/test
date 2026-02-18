# General Settings
resource_group_name = "aks-rg"
location            = "eastus"

tags = {
  Environment = "Development"
  Project     = "AKS-Terraform"
}

# Network Settings
vnet_name          = "aks-vnet"
vnet_address_space = ["10.0.0.0/16"]
subnet_name        = "aks-subnet"
subnet_prefixes    = ["10.0.1.0/24"]

# AKS Settings
cluster_name       = "my-aks-cluster"
dns_prefix         = "myaks"
kubernetes_version = "1.30.101"
node_count         = 2
vm_size            = "standard_dc2as_v5"
