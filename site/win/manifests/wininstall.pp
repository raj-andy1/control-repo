# /etc/puppetlabs/code/environments/production/site/win/manifests/winusers.pp
class win::wininstall {
  package {'notepadplusplus':
    ensure  =>  latest,
    provider  =>  'chocolatey',
  }

  package {'securecrt':
    ensure => '7.3.7',
    provider  =>  'chocolatey',
  }
}
