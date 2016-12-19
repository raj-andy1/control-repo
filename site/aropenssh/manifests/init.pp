# /etc/puppetlabs/code/environments/production/site/aropenssh/manifests/init.pp

class aropenssh {
  package { 'openssh-server':
    ensure  => present,
  }

  service { 'sshd':
    ensure => running,
    enable => true,
  }

  file { '/etc/ssh/sshd_config':
    owner  => root,
    group  =>  root,
    mode   => '0600',
    source =>  'puppet:///modules/aropenssh/sshd_config',
  }
  Package ['openssh-server'] -> File ['/etc/ssh/sshd_config'] ~> Service['sshd']
}
