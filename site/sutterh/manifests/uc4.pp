# /etc/puppetlabs/code/environments/production/site/sutterh/manifests/uc4.pp
# Sample Puppet code to demonstrate installing a windows feature (IIS) via DSC

class sutterh::uc4 (
  $windowsfeaturenm,
  )

{
  dsc_windowsfeature { '$windowsfeaturenm':
  ensure   =>  present,
  dsc_name => $windowsfeaturenm,

  }
}
