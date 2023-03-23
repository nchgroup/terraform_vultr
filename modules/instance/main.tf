provider "vultr" {
  api_key = var.api_key
  rate_limit = var.rate_limit
  retry_limit = var.retry_limit
}

resource "vultr_ssh_key" "my_sshkey" {
  name = var.vultr_ssh_key_name
  ssh_key = chomp(file(var.vultr_ssh_key))
}

resource "vultr_instance" "instance" {
  firewall_group_id = var.firewall_group_id

  plan = var.instance_plan
  region = var.instance_region
  os_id = var.instance_os_id
  label = var.instance_label
  hostname = var.instance_hostname
  enable_ipv6 = var.instance_enable_ipv6
  ddos_protection = var.instance_ddos_protection

  ssh_key_ids = [ resource.vultr_ssh_key.my_sshkey.id ]
}