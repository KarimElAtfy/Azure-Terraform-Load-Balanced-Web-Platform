output "bastion_host_id" {
  description = "ID of the Azure Bastion host."
  value       = azurerm_bastion_host.this.id
}

output "bastion_host_name" {
  description = "Name of the Azure Bastion host."
  value       = azurerm_bastion_host.this.name
}

output "bastion_public_ip_address" {
  description = "Public IP address of Azure Bastion."
  value       = azurerm_public_ip.this.ip_address
}

output "bastion_public_ip_id" {
  description = "ID of the public IP used by Azure Bastion."
  value       = azurerm_public_ip.this.id
}
