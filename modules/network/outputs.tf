output "app_subnet_id" {
  value = azurerm_subnet.test.id
}

output "vm_subnet_id" {
  value = azurerm_subnet.test2.id
}
