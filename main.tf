module "network" {
  source = "./modules/network"

  resource_group_name             = var.resource_group_name
  location                        = var.location
  vnet_name                       = var.vnet_name
  vnet_address_space              = var.vnet_address_space
  app_subnet_name                 = var.app_subnet_name
  app_subnet_address_prefixes     = var.app_subnet_address_prefixes
  bastion_subnet_address_prefixes = var.bastion_subnet_address_prefixes
  network_security_group_name     = var.network_security_group_name
  tags                            = local.common_tags
}

module "compute" {
  source = "./modules/compute"

  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key_path = var.ssh_public_key_path

  vm1_name     = var.vm1_name
  vm2_name     = var.vm2_name
  vm1_nic_name = var.vm1_nic_name
  vm2_nic_name = var.vm2_nic_name

  app_subnet_id  = module.network.app_subnet_id
  cloud_init_vm1 = local.cloud_init_files.vm1
  cloud_init_vm2 = local.cloud_init_files.vm2
  tags           = local.common_tags
}

module "bastion" {
  source = "./modules/bastion"

  resource_group_name    = var.resource_group_name
  location               = var.location
  bastion_host_name      = var.bastion_host_name
  bastion_public_ip_name = var.bastion_public_ip_name
  bastion_subnet_id      = module.network.bastion_subnet_id
  tags                   = local.common_tags
}

module "loadbalancer" {
  source = "./modules/loadbalancer"

  resource_group_name          = var.resource_group_name
  location                     = var.location
  load_balancer_name           = var.load_balancer_name
  load_balancer_public_ip_name = var.load_balancer_public_ip_name
  backend_address_pool_name    = var.backend_address_pool_name
  health_probe_name            = var.health_probe_name
  load_balancing_rule_name     = var.load_balancing_rule_name
  nic_id_vm1                   = module.compute.vm1_nic_id
  nic_id_vm2                   = module.compute.vm2_nic_id
  tags                         = local.common_tags
}

module "monitoring" {
  source = "./modules/monitoring"

  resource_group_name          = var.resource_group_name
  location                     = var.location
  log_analytics_workspace_name = var.log_analytics_workspace_name
  tags                         = local.common_tags
}
