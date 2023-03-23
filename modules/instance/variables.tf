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

variable "instance_plan" {
	description = "The ID of the plan that you want the instance to subscribe to."
    # see list here https://api.vultr.com/v2/plans"
	default = "vc2-1c-1gb"
}

variable "instance_region" {
	description = "The ID of the region that the instance is to be created in."
    # see list here https://api.vultr.com/v2/regions
    default = "mia"
}

variable "instance_os_id" {
	description = "The ID of the operating system to be installed on the server."
    # see list here https://api.vultr.com/v2/os
	default = "477" # debian 11
    #default = "1743" # ubuntu 22
}

variable "instance_label" {
	description = "This is a label for the instance, you must be to assign the label."
}

variable "instance_hostname" {
	description = "This is the hostname to assign to the vps, you must be to assign the hostname."
}

variable "instance_enable_ipv6" {
	description = "This default enable ipv6 in the vps."
	default = false
}

variable "instance_ddos_protection" {
	description = "The following default enable ddos protection in the vps."
	default = true
}

variable "vultr_ssh_key_name" {
    description = "This is the name of our own ssh_key"
    default = "devops_sshkey"
}

variable "vultr_ssh_key" {
    description = "This is a path of our own ssh_pubkey"
    default = "~/.ssh/id_rsa.pub"
}

variable "firewall_group_id" {
    description = "This is group id required by instance"
}