# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc5.pp
# Sample Puppet code to demonstrate setting up a DHCP server via DSC

class windemo::uc5 (
  $windowsfeaturenm = 'DHCP',
  )
{
    dsc_windowsfeature { '$windowsfeaturenm':
      ensure   =>  present,
      dsc_name => $windowsfeaturenm,
    }
 }
 {
    dsc_xDhcpServerScope { 'SampleScope':
      {
        ensure => present,
        dsc_ipendrange => '192.168.1.254',
        dsc_ipstartrange => '192.168.1.1',
        dsc_subnetmask => '255.255.255.0',
        dsc_leaseduration => '00:08:00',
        dsc_state => 'active',
        dsc_addressfamily => 'ipv4',
        dsc_name => 'samplescope',
      }
    }
  }
