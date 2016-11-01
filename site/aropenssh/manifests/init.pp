# /etc/puppetlabs/code/environments/production/site/aropenssh/manifests/init.pp

class aropenssh {

  package { 'openssh-server':
    ensure  => present,
  }

  service { 'ssh':
    subscribe =>  File['sshdconfig'],
    require =>  Package['openssh-server'],
  }

  file { 'sshdconfig':
    name  => '/etc/ssh/sshd_config',
    owner => root,
    group =>  root,
    mode => '644',
    source  =>  'puppet:///modules/aropenssh/sshd_config',
    require =>  Package['openssh-server'],
  }
}
