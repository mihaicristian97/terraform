variable "lxc_password" {
    description = "The password for LXC containers"
    type        = string
    sensitive   = true
}

variable "vm_password" {
    description = "The password for the VM"
    type        = string
    sensitive   = true
}

variable "lxc_gateway" {
    description = "The IP address of the gateway for LXC containers"
    type        = string
}

variable "lxc1_ip" {
    description = "The IP address and netmask for the first LXC container"
    type        = string
}

variable "lxc2_ip" {
    description = "The IP address and netmask for the second LXC container"
    type        = string
}

variable "vm_ip" {
    description = "The IP address and netmask for the virtual machine"
    type        = string
}

variable "proxmox_api_url" {
    description = "The URL of Proxmox API"           # Example: https://<proxmox_host>:8006/api2/json
    type        = string
}

variable "proxmox_api_token_id" {
    description = "The ID of Proxmox API token"      # Example: <proxmox_user>@<realm>!<token_name>
    type        = string
}

variable "proxmox_api_token_secret" {
    description = "The secret of Proxmox API token"  # Example: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
    type        = string
    sensitive   = true
}