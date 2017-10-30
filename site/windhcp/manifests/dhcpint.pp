# /etc/puppetlabs/code/environments/production/site/windhcp/manifests/dhcpint.pp
# Sample Puppet code to disable DHCP for an interface on a Windows machine

class windhcp::dhcpint {
  $::interface_guids.each | $key, $value| {
    SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{C0E7C938-9118-414C-B33B-54AD9FE8E4A9
    registry_value { "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Tcpip\\Parameters\\Interfaces\\{${value}}\\EnableDHCP":
      ensure => present,
      type   => dword,
      data   => '0',

}
