# /etc/puppetlabs/code/environments/production/site/win/manifests/winfeat.pp
class winfeat{
  windowsfeature {'Web-Server':
    ensure  =>  present,
    installmanagementtools  =>  true,
    installsubfeatures  =>  true, 
  }
}
