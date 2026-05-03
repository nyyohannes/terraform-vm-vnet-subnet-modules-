resource "azurerm_virtual_network" "test-network" {
  name                = "test-network"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
  }

resource "azurerm_subnet" "test" {
    name             = "app-subnet"
    address_prefixes = ["10.0.1.0/24"]
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.test-network.name
  }

resource "azurerm_subnet" "test2"  {
    name             = "vm-subnet"
    address_prefixes = ["10.0.2.0/24"]
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.test-network.name
}
