## Libvirt
```
yum group install -y "Development Tools"
yum -y install qemu-kvm libvirt virt-install bridge-utils libvirt-devel  libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c
```

```
echo "net.ipv4.ip_forward = 1"|sudo tee /etc/sysctl.d/99-ipforward.conf
sysctl -p /etc/sysctl.d/99-ipforward.conf
```

```
systemctl enable libvirtd
systemctl start libvirtd
```

## Vagrant
```
https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4_x86_64.rpm
rpm -Uvh vagrant_1.7.4_x86_64.rpm
vagrant plugin install vagrant-libvirt
```

**server was built with a lot of space in home, just exploiting this as VAGRANT HOME**
`echo 'export VAGRANT_HOME=/home/VMs/vagrant' >> /etc/profile`

```
sudo vagrant box add https://app.vagrantup.com/centos/boxes/7
sudo vagrant up --provider=libvirt
```