resource "azurerm_resource_group" "testing" {
  name     = "testing"
  location = "Switzerland North"
}

resource "azurerm_virtual_network" "testing" {
  name                = "testing-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.testing.location
  resource_group_name = azurerm_resource_group.testing.name
}

resource "azurerm_subnet" "testing" {
  for_each = var.subnet_map
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.testing.name
  virtual_network_name = azurerm_virtual_network.testing.name
  address_prefixes     = [each.value.cidr]

}