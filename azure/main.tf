
provider "azurerm" {
    version = "~> 2.0"
    features {}
}
terraform {
}

module "rg" {
  source  = "./modules/resoucegroup"
  name  = var.resouce_group
  environment = var.environment
}

module "acr" {
  source   = "./modules/acr"
  name     = var.acr_name
  environment = var.environment
}