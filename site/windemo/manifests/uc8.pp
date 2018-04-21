# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc8.pp
# Sample Puppet code to demonstrate installation of packages from a share

class windemo::uc8 {
  file {'C:\Windows\Temp\npp.7.5.5.Installer.x64.exe':
  ensure => file,
  source => 'puppet:///ar/Windows exe/npp.7.5.5.Installer.x64.exe',

  }
  package {'Notepad++ (64-bit x64)':
  ensure => installed,
  source => 'C:\Windows\Temp\npp.7.5.5.Installer.x64.exe',
  install_options => ['/S'],
  }
}
