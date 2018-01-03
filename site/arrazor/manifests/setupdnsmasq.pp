#/etc/puppetlabs/code/environments/production/site/arrazor/manifests/setupdnsmasq.pp
# Setup Dnsmasq server

class arrazor::setupdnsmasq (
$dnsmasq_dhcp_content = "listen-address=172.16.75.132
listen-address=127.0.0.1
no-dhcp-interface=lo
server=172.16.75.132
local=/puppet.vm/
no-hosts
no-resolv
domain=puppet.vm
dhcp-fqdn
dhcp-range=172.16.75.1,172.16.66.15,12h
dhcp-authoritative
dhcp-option=option:dns-server,172.16.75.132
conf-dir=/etc/dnsmasq.d",

$razor_content = "# iPXE sets option 175, mark it for network IPXEBOOT
dhcp-match=IPXEBOOT,175
dhcp-boot=net:IPXEBOOT,bootstrap.ipxe
dhcp-boot=undionly-20140116.kpxe
# TFTP setup
enable-tftp
tftp-root=/var/lib/tftpboot"
)

{
file { '/var/lib/tftpboot':
  ensure => 'directory',
  mode   => '0655',
}

-> file { '/var/lib/tftpboot/undionly-20140116.kpxe':
    ensure  => 'file',
    source  => 'https://s3.amazonaws.com/pe-razor-resources/undionly-20140116.kpxe',
}

-> file { '/var/lib/tftpboot/ipxe.efi':
    ensure  => 'file',
    source  => 'http://boot.ipxe.org/ipxe.efi',
}
-> package { 'dnsmasq':
    ensure => 'present',
}
-> file { '/etc/dnsmasq.d/razor':
    ensure  => 'file',
    content => $razor_content,
    notify  => Service['dnsmasq'],
}
-> file { '/etc/dnsmasq.d/dhcp':
    ensure  => 'file',
    content => $dnsmasq_dhcp_content,
    notify  => Service['dnsmasq'],
}
-> service { 'dnsmasq':
    ensure => 'running',
    enable => true,
}

}
