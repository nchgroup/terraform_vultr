module "firewall" {
  source = "./modules/firewall"

  api_key = var.api_key

  vultr_firewall_groupname = var.vultr_firewall_groupname

  fw_rule_protocol = var.fw_rule_protocol
  fw_rule_ip_type = var.fw_rule_ip_type
  fw_rule_subnet = var.fw_rule_subnet
  fw_rule_subnet_size = var.fw_rule_subnet_size
  fw_rule_port = var.fw_rule_port
  fw_rule_notes = var.fw_rule_notes
}

module "instance" {
  source = "./modules/instance"

  api_key = var.api_key

  firewall_group_id = module.firewall.firewall_group_id

  instance_plan     = var.instance_plan
  instance_region   = var.instance_region
  instance_os_id    = var.instance_os_id
  instance_label    = var.instance_label
  instance_hostname = var.instance_hostname

  vultr_ssh_key_name = var.vultr_ssh_key_name
  vultr_ssh_key      = var.vultr_ssh_key
}
