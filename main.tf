
provider "azurerm" {
    version = "~> 2.0"
    features {}
}
terraform {
}

module "acr" {
  source   = "./modules/acr"
  name     = "$var.acr_name"
  environment = ""
}