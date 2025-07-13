resource "proxmox_lxc" "ubuntu_lxc1" {
    hostname     = "ubuntu-lxc-1"
    target_node  = "Proxmox"
    ostemplate   = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
    unprivileged = true

    password = var.lxc_password
    cores    = 1
    memory   = 1024
    swap     = 512
    start    = true

    rootfs {
        storage = "local-lvm"
        size    = "1G"
    }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = var.lxc1_ip
        gw     = var.lxc_gateway
    }
}

resource "proxmox_lxc" "ubuntu_lxc2" {
    hostname     = "ubuntu-lxc-2"
    target_node  = "Proxmox"
    ostemplate   = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
    unprivileged = true

    password = var.lxc_password
    cores    = 1
    memory   = 1024
    swap     = 512
    start    = true

    rootfs {
        storage = "local-lvm"
        size    = "1G"
    }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = var.lxc2_ip
        gw     = var.lxc_gateway
    }
}

resource "proxmox_vm_qemu" "ubuntu_vm1" {
    name        = "ubuntu-vm-1"
    target_node = "Proxmox"
    cores       = 2
    cpu         = "qemu64"
    sockets     = 1
    memory      = 2048
    iso         = "none"
    scsihw      = "virtio-scsi-pci"
    boot        = "c"
    bootdisk    = "scsi0"
    onboot      = true
    os_type     = "l26" # Linux 2.6/3.x/4.x (64-bit)
    balloon     = 1
    kvm         = false

    disk {
        type    = "scsi"
        storage = "local-lvm"
        size    = "10G"
    }

    network {
        model  = "virtio"
        bridge = "vmbr0"
    }
}