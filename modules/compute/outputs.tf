output "vm1_id" {
  description = "ID of backend VM1."
  value       = azurerm_linux_virtual_machine.vm1.id
}

output "vm2_id" {
  description = "ID of backend VM2."
  value       = azurerm_linux_virtual_machine.vm2.id
}

output "vm1_name" {
  description = "Name of backend VM1."
  value       = azurerm_linux_virtual_machine.vm1.name
}

output "vm2_name" {
  description = "Name of backend VM2."
  value       = azurerm_linux_virtual_machine.vm2.name
}

output "vm1_nic_id" {
  description = "NIC ID of backend VM1."
  value       = azurerm_network_interface.vm1.id
}

output "vm2_nic_id" {
  description = "NIC ID of backend VM2."
  value       = azurerm_network_interface.vm2.id
}

output "vm1_private_ip_address" {
  description = "Private IP address of backend VM1."
  value       = azurerm_network_interface.vm1.private_ip_address
}

output "vm2_private_ip_address" {
  description = "Private IP address of backend VM2."
  value       = azurerm_network_interface.vm2.private_ip_address
}
