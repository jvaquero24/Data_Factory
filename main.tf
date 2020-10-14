data "azurerm_resource_group" "RG" {
  name = var.resource_group_name
}

resource "azurerm_data_factory" "ADF" {
  name                = var.name_data_factory
  location            = var.location
  resource_group_name = data.azurerm_resource_group.RG.name
}
