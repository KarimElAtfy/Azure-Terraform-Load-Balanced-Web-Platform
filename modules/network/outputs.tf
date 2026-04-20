output "resource_group_name" {
  description = "Name of the resource group."
  value       = azurerm_resource_group.this.name
}

output "resource_group_location" {
  description = "Location of the resource group."
  value       = azurerm_resource_group.this.location
}

output "vnet_id" {
  description = "ID of the virtual network."
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "Name of the virtual network."
  value       = azurerm_virtual_network.this.name
}

output "app_subnet_id" {
  description = "ID of the application subnet."
  value       = azurerm_subnet.app.id
}

output "app_subnet_name" {
  description = "Name of the application subnet."
  value       = azurerm_subnet.app.name
}

output "bastion_subnet_id" {
  description = "ID of the Azure Bastion subnet."
  value       = azurerm_subnet.bastion.id
}

output "network_security_group_id" {
  description = "ID of the application subnet NSG."
  value       = azurerm_network_security_group.app.id
}
