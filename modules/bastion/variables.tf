variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region for Bastion resources."
  type        = string
}

variable "bastion_host_name" {
  description = "Name of the Azure Bastion host."
  type        = string
}

variable "bastion_public_ip_name" {
  description = "Name of the public IP used by Azure Bastion."
  type        = string
}

variable "bastion_subnet_id" {
  description = "ID of the AzureBastionSubnet."
  type        = string
}

variable "tags" {
  description = "Common tags applied to Bastion resources."
  type        = map(string)
}
