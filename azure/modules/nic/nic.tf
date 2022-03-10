resource "azurerm_network_interface" "example" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = var.subnetid
    private_ip_address_allocation = "Dynamic"
  }

  # depends_on = [
  #   subnet
  # ]
}