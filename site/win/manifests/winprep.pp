# /etc/puppetlabs/code/environments/production/site/win/manifests/winprep.pp
# Sample code to do some prep work on a Windows machnine

class win::winprep {

  package {['firefox','powershell']:
    ensure   => latest,
    provider => 'chocolatey',
  }

  windows {'NET-Framework-Core':
    ensure => present,
}

  reboot { 'after':
    message   => 'DSC has requested a reboot',
    subscribe => Package['powershell'],
  }
}
