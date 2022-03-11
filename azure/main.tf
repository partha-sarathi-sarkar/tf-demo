terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# module "nsg" {
#   source = "./modules/nsg"
#   resource_group_name = var.resource_group_name
#   location = var.location
#   nsg_name = var.nsg_name
  
# }

module "vnet" {
    source = "./modules/vnet"
    vnet_name = var.vnet_name
    resource_group_name = var.resource_group_name
    location = var.location
    environment = var.environment
}

module "subnet" {
  source = "./modules/subnet"
  resource_group_name = var.resource_group_name
  subnet_name = var.subnet_name
  vnet_name = var.vnet_name
   depends_on = [
    module.vnet.vnetid
  ]
}

module "nic" {
  source = "./modules/nic"
  resource_group_name = var.resource_group_name
  location = var.location
  subnetid = module.subnet.subnetid
  depends_on = [
    module.subnet.subnetid
  ]
}

#module "manageddisk" {
 #   source = "git@github.com:partha-sarathi-sarkar/Internal-terraform.git"
  #  osdiskname = var.osdiskname
   # resource_group_name = var.resource_group_name
    #location= var.location
    #environment =var.environment
#}

module "vm" {
  source = "./modules/vm"
  resource_group_name = var.resource_group_name
  location = var.location
  vmname = var.vmname
  environment = var.environment
  nicid = module.nic.nicid
  # osdiskid = module.manageddisk.osdiskid
  depends_on = [
    module.nic.nicid,
    #module.manageddisk.osdiskid
  ]
}
