variable "api_key" {
  description = "The following value is the apikey required by vultr"
}

variable "instance_plan" {
  description = "Default instance plan for you own vps"
  default     = "vc2-1c-1gb"
}
variable "instance_region" {
  description = "Default instance region, where your vps would be located"
  default     = "mia"
}

variable "instance_os_id" {
  description = "Debian by default"
  default     = "477"
}

variable "instance_label" {
  description = "Put your own label for instance"
}

variable "instance_hostname" {
  description = "The hostname of vps"
}

variable "instance_enable_ipv6" {
  description = "With the following value you would enable ipv6 in the vps"
  default     = false
}

variable "instance_ddos_protection" {
  description = "With the following value you would enable ddos protection in the vps"
  default     = true
}

variable "vultr_ssh_key_name" {
  description = "This is the name of our own ssh_key"
  default     = "devops_sshkey"
}

variable "vultr_ssh_key" {
  description = "This is a path of our own ssh_pubkey"
  default     = "~/.ssh/id_rsa.pub"
}

variable "vultr_firewall_groupname" {
	description = "The name of firewall groupname"
	default = "my new firewall group"
}

variable "fw_rule_protocol" {
	description = "The following value is for protocol"
	default = "tcp"
}

variable "fw_rule_ip_type" {
	description = "This following value is for type of ip, possible values are v4 or v6"
	default = "v4"
}

variable "fw_rule_subnet" {
	description = "IP Address for that you want to define for this firewall rule"
	default = "0.0.0.0"	
}

variable "fw_rule_subnet_size" {
	description = "The mask of the subnet, ex. /32, /24, etc."
	default = "0"
}

variable "fw_rule_port" {
	description = "This value can be a specific port or a colon separate port range"
	default = "443"
}

variable "fw_rule_notes" {
	description = "A simple note for firewall rule"
	default = "My custom rule"
}
