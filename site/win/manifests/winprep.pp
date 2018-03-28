# /etc/puppetlabs/code/environments/production/site/win/manifests/winprep.pp
# Sample code to do some prep work on a Windows machnine

class win::winprep {

  package {'powershell':
    ensure   => latest,
    provider => 'chocolatey',
  }


  package {'Mozilla Firefox 59.0.1':
  ensure => installed,
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
