# /etc/puppetlabs/code/environments/production/site/win/manifests/winprep.pp
# Sample code to do some prep work on a Windows machnine

class win::winprep {

  package {'powershell':
    ensure   => latest,
    provider => 'chocolatey',
  }


  package {'Mozilla Firefox 59.0.1 (x64 en-US)':
  ensure => latest,
  provider => 'chocolatey',
  }

  windowsfeature {'NET-Framework-Core':
    ensure => present,
}

  reboot { 'after':
    message   => 'DSC has requested a reboot',
    subscribe => Package['powershell'],
  }
}
