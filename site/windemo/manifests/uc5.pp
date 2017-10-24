# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc5.pp
# Sample Puppet code to demonstrate setting up a DHCP server via DSC

class windemo::uc5 {

#install DHCP Server feature
    dsc_windowsfeature { 'DHCP':
      ensure   =>  present,
      dsc_name => 'DHCP',
    } ->
#install DHCP Server Remote Server Administration
    dsc_windowsfeature { 'RSAT-DHCP':
      ensure   =>  present,
      dsc_name => 'RSAT-DHCP',
    } ->

# Add DHCP Security groups
    exec {'set-dhcp-securitygroups':
      command => 'C:\windows\system32\netsh.exe dhcp add securitygroups',
      onlyif => 'C:\windows\system32\net.exe "DHCP Admistrators"', #Run only if the "DHCP Administrators" group has not been added
    } ~>
# Restart DHCP Service after adding the DHCP Security groups to complete the installation process
    service {'DHCPServer':
  } ->

# Add sample DHCP Scope
    dsc_xDhcpServerScope { 'samplescope':
      ensure => present,
      dsc_ipendrange => '172.16.1.254',
      dsc_ipstartrange => '172.16.1.1',
      dsc_subnetmask => '255.255.255.0',
      dsc_leaseduration => '00:08:00',
      dsc_state => 'active',
      dsc_addressfamily => 'ipv4',
      dsc_name => 'samplescope',
    }
  }
