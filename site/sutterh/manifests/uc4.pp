# /etc/puppetlabs/code/environments/production/site/sutterh/manifests/uc4.pp
# Sample Puppet code to demonstrate installing a windows feature (IIS) via DSC

class sutterh::uc4 {
  dsc_windowsfeature { 'Web Server':
  ensure   =>  present,
  dsc_name => 'Web Server',

  }
}
