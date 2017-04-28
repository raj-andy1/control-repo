class profile::base {



  #the base profile should include component modules that will be on all nodes
  host {'nfsservernm':
    ensure => present,
    name   => $linnodenfsnm,
    ip     => $linnodednsip,
  }

  package {'tcpdump-4.5.1-3.el7.x86_64.rpm':
    ensure   =>  present,
    provider => rpm,
    source   =>  '/var/nfsshare/tcpdump-4.5.1-3.el7.x86_64.rpm',
    require  => [
      Class['profile::nfsclient'],
      Host['nfsservernm'],
      ],
  }
  host {'nfsservernm':
    ensure => present,
    name   => $linnodenfsnm,
    ip     => $linnodednsip,
  }

  package {'tcpdump-4.5.1-3.el7.x86_64.rpm':
    ensure   =>  present,
    provider => rpm,
    source   =>  '/var/nfsshare/tcpdump-4.5.1-3.el7.x86_64.rpm',
    require  => [
      Class['profile::nfsclient'],
      Host['nfsservernm'],
      ],
  }
}
