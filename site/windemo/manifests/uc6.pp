# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc6.pp
# Sample Puppet code to demonstrate enabling/disabling RDP

class windemo::uc6 {

# Remote Desktop Connection
registry::value { 'rdp':
  key   => 'HKLM\System\CurrentControlSet\Control\Terminal Server',
  value => 'fDenyTSConnections',
  type  => 'dword',
  data  => '0', # '0' to enable or '1' to disable
}

# Remote Desktop Network Level Authentication
registry::value { 'rdp_nla':
  key   => 'HKLM\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp',
  value => 'UserAuthentication',
  type  => 'dword',
  data  => '0', # '0' to enable or '1' to disable
}

# Enable RDP Firewall Rule (Windows firewall is NOT enabled but the required rule is created)

windows_firewall::exception { 'rdp_firewall':
  ensure       => present,
  direction    => 'in',
  action       => 'allow',
  enabled      => 'yes',
  protocol     => 'TCP',
  local_port   => '3389',
  display_name => 'Remote Desktop - Puppet',
  description  => 'This exception allows RDP access (TCP 3389)',
  }
}
