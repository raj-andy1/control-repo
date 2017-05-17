# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc4.pp
# Sample Puppet code to demonstrate installing a windows feature (IIS) via DSC

class windemo::uc4 (
  $windowsfeaturenm,
  )

{
  dsc_windowsfeature { '$windowsfeaturenm':
  ensure   =>  present,
  dsc_name => $windowsfeaturenm,

  }
}
