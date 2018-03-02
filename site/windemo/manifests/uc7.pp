# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc7.pp
# Sample Puppet code to demonstrate installation of packages from a share

class windemo::uc7 {
  file {'C:\Windows\Temp\ChromeSetup.exe':
  ensure => file,
  source => 'puppet:///ar/ChromeSetup.exe',

  }
  package {'Chrome':
  ensure => installed,
  source => 'C:\Windows\Temp',
  install_options => ['/VERYSILENT'],
  }
}
