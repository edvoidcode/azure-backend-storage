resource "azurerm_storage_account" "storage_acc" {
  name                     = "storagebackend2"
  resource_group_name      = azurerm_resource_group.backend_storage.name
  location                 = azurerm_resource_group.backend_storage.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "Test"
  }
}

resource "azurerm_storage_container" "container-storage" {
  name                  = "container-storage"
  storage_account_name  = azurerm_storage_account.storage_acc.name
  container_access_type = "private"
}
