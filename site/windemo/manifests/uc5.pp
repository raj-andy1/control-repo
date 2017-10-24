# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc5.pp
# Sample Puppet code to demonstrate setting up a DHCP server via DSC

class windemo::uc5 (
  $windowsfeaturenm = DHCP,
  )
  {
    dsc_windowsfeature { '$windowsfeaturenm':
    ensure   =>  present,
    dsc_name => $windowsfeaturenm,

    }
 }
