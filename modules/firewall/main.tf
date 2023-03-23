provider "vultr" {
  api_key = var.api_key
  rate_limit = var.rate_limit
  retry_limit = var.retry_limit
}

resource "vultr_firewall_group" "firewall_group" {
  description = var.vultr_firewall_groupname
}

resource "vultr_firewall_rule" "firewall" {
  firewall_group_id = vultr_firewall_group.firewall_group.id
  protocol = var.fw_rule_protocol
  ip_type = var.fw_rule_ip_type
  subnet = var.fw_rule_subnet
  subnet_size = var.fw_rule_subnet_size
  port = var.fw_rule_port
  notes = var.fw_rule_notes
}