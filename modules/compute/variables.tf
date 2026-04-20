variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region for compute resources."
  type        = string
}

variable "vm_size" {
  description = "Azure VM size used for backend virtual machines."
  type        = string
}

variable "admin_username" {
  description = "Administrator username for the Linux virtual machines."
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key used for VM authentication."
  type        = string
}

variable "vm1_name" {
  description = "Name of the first backend VM."
  type        = string
}

variable "vm2_name" {
  description = "Name of the second backend VM."
  type        = string
}

variable "vm1_nic_name" {
  description = "Name of the NIC for the first backend VM."
  type        = string
}

variable "vm2_nic_name" {
  description = "Name of the NIC for the second backend VM."
  type        = string
}

variable "app_subnet_id" {
  description = "ID of the application subnet where backend NICs will be placed."
  type        = string
}

variable "cloud_init_vm1" {
  description = "Path to the cloud-init file for VM1."
  type        = string
}

variable "cloud_init_vm2" {
  description = "Path to the cloud-init file for VM2."
  type        = string
}

variable "tags" {
  description = "Common tags applied to compute resources."
  type        = map(string)
}
