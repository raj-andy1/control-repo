# /etc/puppetlabs/code/environments/production/site/win/manifests/windom.pp
class win::windom{
  windowsfeature { 'Domain Controller':
    ensure  =>  present,
    installsubfeatures  => true,
    installmanagementtools  =>  true,

  }
}
