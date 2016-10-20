# /etc/puppetlabs/code/environments/production/site/win/manifests/windom.pp
class win::windom{
  windowsfeature { 'DomainController':
    ensure  =>  present,
    installsubfeatures  => true,
    installmanagementtools  =>  true,
    restart =>  true,

  }
}
