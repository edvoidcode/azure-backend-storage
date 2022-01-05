terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-westeurope"
    storage_account_name = "csb10032000bc4fae98"
    container_name       = "main-backend"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "backend_storage" {
  name     = "backend-state"
  location = var.region
}
