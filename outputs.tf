output "resource_group_name" {
  description = "Name of the resource group."
  value       = var.resource_group_name
}

output "location" {
  description = "Azure region used for the deployment."
  value       = var.location
}

output "load_balancer_public_ip_address" {
  description = "Public IP address of the Azure Load Balancer."
  value       = module.loadbalancer.load_balancer_public_ip_address
}

output "bastion_public_ip_address" {
  description = "Public IP address of Azure Bastion."
  value       = module.bastion.bastion_public_ip_address
}

output "vm1_private_ip_address" {
  description = "Private IP address of backend VM1."
  value       = module.compute.vm1_private_ip_address
}

output "vm2_private_ip_address" {
  description = "Private IP address of backend VM2."
  value       = module.compute.vm2_private_ip_address
}
