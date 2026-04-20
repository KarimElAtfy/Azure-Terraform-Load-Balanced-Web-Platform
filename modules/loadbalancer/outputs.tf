output "load_balancer_id" {
  description = "ID of the Azure Load Balancer."
  value       = azurerm_lb.this.id
}

output "load_balancer_name" {
  description = "Name of the Azure Load Balancer."
  value       = azurerm_lb.this.name
}

output "load_balancer_public_ip_address" {
  description = "Public IP address of the Azure Load Balancer."
  value       = azurerm_public_ip.this.ip_address
}

output "load_balancer_public_ip_id" {
  description = "ID of the public IP used by the Azure Load Balancer."
  value       = azurerm_public_ip.this.id
}

output "backend_address_pool_id" {
  description = "ID of the Load Balancer backend address pool."
  value       = azurerm_lb_backend_address_pool.this.id
}

output "health_probe_id" {
  description = "ID of the HTTP health probe."
  value       = azurerm_lb_probe.http.id
}

output "load_balancing_rule_id" {
  description = "ID of the HTTP load balancing rule."
  value       = azurerm_lb_rule.http.id
}
