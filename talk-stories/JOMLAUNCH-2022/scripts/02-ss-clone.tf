resource "proxmox_vm_qemu" "ss-clone"{
    name = "ss-clone${count.version+1}" // name of the clone name you will make. count.version is the version number of the clone you will make.
    count = "1" // No of image for the scripts generate the images
    desc = "replica ubuntu server" // Description of the server
    vmid = "401" // virtual image id that defines the virtual machine
    target_node = "pve" //Target node is for the proxmox datacenters 

    agent = 1 # priority list to upmost agent

    clone = "ubuntu-focalv2" // name of the clone disk that will be used
    cores = 2 // number of cores to be used for the cluster
    sockets = 1 // number of sockets to be used for the cluster
    cpu = "host" // CPU to be used for the create
    memory = 2048 // number of bytes to be used for the server.


    network{
        bridge = "vmbr0" // method of connection
        model = "virtio"  // Ethernet interface

    }

    disk {
      storage = "local-lvm" // type of storage
      type = "virtio" // type of interface connector for local hard disk or virtual disk
      size = "32G" // size of the disks 

    }

    os_type = "cloud-init" // type of os that runs on the cluster. Eg. mostly choose cloud-init
    ipconfig0 = "<ip subnet + /host size. Eg /24>, gw=<Gateway IP address>" // IP configuration for the server. Normally, we will have a prefix for the server. 
    nameserver = "<Gateway IP address>"

    ciuser = "xcad"
    sshkeys = <<EOF
    <ssh-keypair.pub> 
    EOF
}
