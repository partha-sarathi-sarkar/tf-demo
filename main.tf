terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# create ACR
resource "azurerm_container_registry" "demo" {
    name                = "exampleacr1"
    resource_group_name = "devops-learning"
    location            = "East US"
    sku                 = "Standard"
}

# create AKS

resource "azurerm_kubernetes_cluster" "demo" {
  name                = "example-aks1"
  location            = "East US"
  resource_group_name = "devops-learning"
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
