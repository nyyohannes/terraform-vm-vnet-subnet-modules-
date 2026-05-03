terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

resource "azurerm_resource_group" "RG2" {
  name     = "RG2"
  location = "Canada Central"
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.RG2.name
  location            = azurerm_resource_group.RG2.location
}

module "compute" {
  source             = "./modules/compute"
  resource_group_name = azurerm_resource_group.RG2.name
  location            = azurerm_resource_group.RG2.location
  subnet_id           = module.network.vm_subnet_id

}
