variable "api_key" {
    description = "This is a Vultr APIKEY"
}

variable "rate_limit" {
    description = "Vultr limits API calls to 3 call per second."
    default = "700"
}

variable "retry_limit" {
    description = "This is the default of retries that should be attempted on a failed call."
    default = "3"
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
