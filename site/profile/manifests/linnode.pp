# /etc/puppetlabs/code/environments/production/profile/manifests/linnode.pp
# Setup sample linux node for demo purpose

class profile::linnode (
  $linnodednsip,
  $linnodenfsnm,
  $ntpservernm,
  )

{
  include arinifile
  include profile::nfsclient

  class {'::ntp':
  servers => $ntpservernm,
  }

  host {'nfsservernm':
    ensure => present,
    name   => $linnodenfsnm,
    ip     => $linnodednsip,
  }

  package {'tcpdump-4.5.1-3.el7.x86_64.rpm':
    ensure   =>  installed,
    provider => rpm,
    source   =>  '/var/nfsshare/tcpdump-4.5.1-3.el7.x86_64.rpm',
    require  => [
      Class['profile::nfsclient'],
      Host['nfsservernm'],
      ],
  }

}
