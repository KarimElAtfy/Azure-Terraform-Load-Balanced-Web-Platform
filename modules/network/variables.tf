variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region for the network resources."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network."
  type        = list(string)
}

variable "app_subnet_name" {
  description = "Name of the application subnet."
  type        = string
}

variable "app_subnet_address_prefixes" {
  description = "Address prefixes for the application subnet."
  type        = list(string)
}

variable "bastion_subnet_address_prefixes" {
  description = "Address prefixes for Azure Bastion subnet."
  type        = list(string)
}

variable "network_security_group_name" {
  description = "Name of the application subnet network security group."
  type        = string
}

variable "tags" {
  description = "Common tags applied to network resources."
  type        = map(string)
}
