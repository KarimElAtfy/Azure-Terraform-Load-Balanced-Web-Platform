variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region for load balancer resources."
  type        = string
}

variable "load_balancer_name" {
  description = "Name of the public Azure Load Balancer."
  type        = string
}

variable "load_balancer_public_ip_name" {
  description = "Name of the public IP used by the Load Balancer."
  type        = string
}

variable "backend_address_pool_name" {
  description = "Name of the Load Balancer backend address pool."
  type        = string
}

variable "health_probe_name" {
  description = "Name of the Load Balancer health probe."
  type        = string
}

variable "load_balancing_rule_name" {
  description = "Name of the Load Balancer rule."
  type        = string
}

variable "nic_id_vm1" {
  description = "NIC ID of backend VM1."
  type        = string
}

variable "nic_id_vm2" {
  description = "NIC ID of backend VM2."
  type        = string
}

variable "tags" {
  description = "Common tags applied to load balancer resources."
  type        = map(string)
}
