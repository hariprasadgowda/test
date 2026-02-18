# Backend configuration for Terraform state
terraform {
  backend "azurerm" {
    resource_group_name  = "backend-tf"
    storage_account_name = "backendtfstuse"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
