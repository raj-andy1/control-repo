# /etc/puppetlabs/code/environments/production/site/win/manifests/winprep.pp
# Sample code to do some prep work on a Windows machnine

class win::winprep {

  package {['firefox','powershell']:
    ensure   => latest,
    provider => 'chocolatey',
  }

  {
    reboot { 'after':
      message   => 'DSC has requested a reboot',
      Subscribe => Package['powershell'],
    }

  dsc_xdnsserveraddress { 'add domain':
    ensure             => present,
    dsc_addressfamily  => 'IPv4',
    dsc_address        => '192.168.0.12',
    dsc_interfacealias => 'Ethernet',
    require            => Package['powershell']
  }
}
