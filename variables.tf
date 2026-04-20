variable "project_name" {
  description = "Project name used for naming and tagging."
  type        = string
  default     = "cloudlab"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region for all primary resources."
  type        = string
  default     = "germanywestcentral"
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "rg-cloudlab-dev-gwc"
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
  default     = "vnet-cloudlab-dev-gwc"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.20.0.0/16"]
}

variable "app_subnet_name" {
  description = "Name of the application subnet."
  type        = string
  default     = "snet-app-dev-gwc"
}

variable "app_subnet_address_prefixes" {
  description = "Address prefixes for the application subnet."
  type        = list(string)
  default     = ["10.20.1.0/24"]
}

variable "bastion_subnet_address_prefixes" {
  description = "Address prefixes for Azure Bastion subnet."
  type        = list(string)
  default     = ["10.20.10.0/26"]
}

variable "network_security_group_name" {
  description = "Name of the application subnet NSG."
  type        = string
  default     = "nsg-app-dev-gwc"
}

variable "vm_size" {
  description = "Azure VM size for backend web servers."
  type        = string
  default     = "Standard_B2pts_v2"
}

variable "admin_username" {
  description = "Administrator username for the Linux virtual machines."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key used for VM authentication."
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "vm1_name" {
  description = "Name of the first backend VM."
  type        = string
  default     = "vm-web-01-dev-gwc"
}

variable "vm2_name" {
  description = "Name of the second backend VM."
  type        = string
  default     = "vm-web-02-dev-gwc"
}

variable "vm1_nic_name" {
  description = "Name of the NIC for the first backend VM."
  type        = string
  default     = "nic-web-01-dev-gwc"
}

variable "vm2_nic_name" {
  description = "Name of the NIC for the second backend VM."
  type        = string
  default     = "nic-web-02-dev-gwc"
}

variable "bastion_host_name" {
  description = "Name of the Azure Bastion host."
  type        = string
  default     = "bas-cloudlab-dev-gwc"
}

variable "bastion_public_ip_name" {
  description = "Name of the public IP used by Azure Bastion."
  type        = string
  default     = "pip-bastion-dev-gwc"
}

variable "load_balancer_name" {
  description = "Name of the public Azure Load Balancer."
  type        = string
  default     = "lb-web-dev-gwc"
}

variable "load_balancer_public_ip_name" {
  description = "Name of the public IP used by the Load Balancer."
  type        = string
  default     = "pip-lb-web-dev-gwc"
}

variable "backend_address_pool_name" {
  description = "Name of the Load Balancer backend address pool."
  type        = string
  default     = "beap-web-dev-gwc"
}

variable "health_probe_name" {
  description = "Name of the Load Balancer health probe."
  type        = string
  default     = "probe-http-dev-gwc"
}

variable "load_balancing_rule_name" {
  description = "Name of the Load Balancer rule."
  type        = string
  default     = "lbr-http-dev-gwc"
}

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace."
  type        = string
  default     = "law-cloudlab-dev-gwc"
}

variable "tags" {
  description = "Common tags applied to resources."
  type        = map(string)
  default = {
    project     = "azure-load-balanced-web-platform"
    environment = "dev"
    managed_by  = "terraform"
    portfolio   = "true"
  }
}
