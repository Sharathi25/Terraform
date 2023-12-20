resource "azurerm_resource_group" "datafactory" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_data_factory" "datafactory" {
  name                = "example"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
