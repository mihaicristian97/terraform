resource "proxmox_lxc" "ubuntu_lxc1" {
    hostname = "ubuntu-lxc-1"
    target_node = "Proxmox"
    ostemplate = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
    unprivileged = true

    password = var.lxc_password
    cores = 1
    memory = 1024
    swap = 512
    start = true

    rootfs {
        storage = "local-lvm"
        size    = "1G"
    }

    network {
        name = "eth0"
        bridge = "vmbr0"
        ip = var.lxc1_ip
        gw = var.the_gateway
    }
}

resource "proxmox_lxc" "ubuntu_lxc2" {
    hostname = "ubuntu-lxc-2"
    target_node = "Proxmox"
    ostemplate = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
    unprivileged = true

    password = var.lxc_password
    cores = 1
    memory = 1024
    swap = 512
    start = true

    rootfs {
        storage = "local-lvm"
        size    = "1G"
    }

    network {
        name = "eth0"
        bridge = "vmbr0"
        ip = var.lxc2_ip
        gw = var.the_gateway
    }
}