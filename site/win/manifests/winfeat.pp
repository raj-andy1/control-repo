# /etc/puppetlabs/code/environments/production/site/win/manifests/winfeat.pp
# Sample code that installs the webserver or IIS on a Windows2012 server
class win::winfeat{
  windowsfeature {'Web-Server':
    ensure  =>  present,
    installmanagementtools  =>  true,
    installsubfeatures  =>  true,
  }
}
