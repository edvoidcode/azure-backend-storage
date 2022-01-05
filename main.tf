provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "backend_storage" {
  name     = "backend-state"
  location = "West Europe"
}
