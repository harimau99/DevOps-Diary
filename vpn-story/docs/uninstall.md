# Uninstall the VPN

*Read this in other languages: [English](uninstall.md), [简体中文](uninstall-zh.md).*

Follow these steps to remove the VPN. Commands must be run as `root`, or with `sudo`.

## Steps

* [First step](#first-step)
* [Second step](#second-step)
* [Third step](#third-step)
* [Fourth step](#fourth-step)
* [Optional](#optional)
* [When finished](#when-finished)

## First step

```bash
service ipsec stop
service xl2tpd stop
rm -rf /usr/local/sbin/ipsec /usr/local/libexec/ipsec
rm -f /etc/init/ipsec.conf /lib/systemd/system/ipsec.service \
      /etc/init.d/ipsec /usr/lib/systemd/system/ipsec.service
```

## Second step

### Ubuntu/Debian

`apt-get purge xl2tpd`

### CentOS/RHEL

`yum remove xl2tpd`

## Third step

### Ubuntu/Debian

Edit `/etc/iptables.rules` and remove unneeded rules.   
Your original rules (if any) are backed up as `/etc/iptables.rules.old-date-time`.   
In addition, edit `/etc/iptables/rules.v4` if the file exists.   

### CentOS/RHEL

Edit `/etc/sysconfig/iptables` and remove unneeded rules.   
Your original rules (if any) are backed up as `/etc/sysconfig/iptables.old-date-time`.   

## Fourth step

Edit `/etc/sysctl.conf` and remove the lines after `# Added by hwdsl2 VPN script`.   
Edit `/etc/rc.local` and remove the lines after `# Added by hwdsl2 VPN script`. DO NOT remove `exit 0` (if any).

## Optional

Note: This step is optional.

Remove these config files:

* /etc/ipsec.conf*
* /etc/ipsec.secrets*
* /etc/ppp/chap-secrets*
* /etc/ppp/options.xl2tpd*
* /etc/pam.d/pluto
* /etc/sysconfig/pluto
* /etc/default/pluto
* /etc/ipsec.d (directory)
* /etc/xl2tpd (directory)

Copy and paste for fast removal:

```bash
rm -f /etc/ipsec.conf* /etc/ipsec.secrets* /etc/ppp/chap-secrets* /etc/ppp/options.xl2tpd* \
      /etc/pam.d/pluto /etc/sysconfig/pluto /etc/default/pluto
rm -rf /etc/ipsec.d /etc/xl2tpd
```

## When finished

Reboot your server.
