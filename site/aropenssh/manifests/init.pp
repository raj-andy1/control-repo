# /etc/puppetlabs/code/environments/production/site/aropenssh/manifests/init.pp

class aropenssh {
  Package ['openssh-server']
  -> File ['/etc/ssh/sshd_config']
  ~> Service['ssd']

  package { 'openssh-server':
    ensure  => present,
  }

  service { 'sshd':
    ensure => running,
  }

  file { '/etc/ssh/sshd_config':
    owner  => root,
    group  =>  root,
    mode   => '0600',
    source =>  'puppet:///modules/aropenssh/sshd_config',
  }
}
