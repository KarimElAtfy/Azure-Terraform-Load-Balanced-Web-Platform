locals {
  workload_name = "web"

  cloud_init_files = {
    vm1 = "${path.root}/cloud-init/vm1-cloud-init.yaml"
    vm2 = "${path.root}/cloud-init/vm2-cloud-init.yaml"
  }

  common_tags = var.tags
}
