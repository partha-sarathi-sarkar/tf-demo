resource "azurerm_network_security_group" "alpha" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
}