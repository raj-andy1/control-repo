# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc7.pp
# Sample Puppet code to demonstrate installation of packages from a share

class windemo::uc7 {
  file {'C:\Windows\Temp\GoogleChromeStandaloneEnterprise64.exe':
  ensure => file,
  source => 'puppet:///ar/GoogleChromeStandaloneEnterprise64.exe',

  }
  package {'Google Chrome':
  ensure => installed,
  source => 'C:\Windows\Temp\GoogleChromeStandaloneEnterprise64.exe',
  install_options => ['/SILENT'],
  }
}
