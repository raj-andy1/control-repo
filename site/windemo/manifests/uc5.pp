# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc5.pp
# Sample Puppet code to demonstrate setting up a DHCP server via DSC

class windemo::uc5 {

    dsc_windowsfeature { 'DHCP':
      ensure   =>  present,
      dsc_name => 'DHCP',
    } ->

    dsc_windowsfeature { 'RSAT-DHCP':
      ensure   =>  present,
      dsc_name => 'RSAT-DHCP',
    } ->

    exec {'set-dhcp-securitygroups':
      command => 'netsh dhcp add securitygroups',
      creates => 'C:\created.txt',
    } ~>

    service {'DHCP':}
  } ->

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
