# /etc/puppetlabs/code/environments/production/site/windhcp/manifests/dhcpint.pp
# Sample Puppet code to disable DHCP for an interface on a Windows machine

class windemo::uc6 (
  $net_int_status = false,
  $net_int_nm =,
  $net_int_ipaddr =,
  $net_int_ipmask =,
  $net_int_ipgw =,
  )

{

  exec {'set-staticip-for-interface':
    command => 'C:\windows\system32\netsh.exe interface ip set address "Ethernet" static 172.168.1.2 255.255.255.0 172.168.1.1 ',
    onlyif => ($net_int_status == true),
}
