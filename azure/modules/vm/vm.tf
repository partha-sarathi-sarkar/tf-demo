resource "azurerm_virtual_machine" "main" {
  name                  = var.vmname
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.nicid]
  vm_size               = var.vmsize

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.computer_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }

  # storage_os_disk {
  #   name            = "managed-disk-01"  # this matches new created managed disk name
  #   managed_disk_id = var.osdiskid
  #   caching         = "ReadWrite"
  #   create_option   = "Attach"
  #   os_type         = "Linux"    # add this os_type
  # }

  tags = {
    environment = var.environment
  }

  # depends_on = [
  #   nicid
  # ]
}