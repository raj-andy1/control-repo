# /etc/puppetlabs/code/environments/production/profile/manifests/linnode.pp
# Setup sample linux node for demo purpose

class profile::linnode (
  $linnodednsip,
  $linnodenfsnm,
  $ntpservernm,
  )

{

  include manage_users::testusers
  include arinifile::cachecatalog

  class {'::ntp':
  servers => $ntpservernm,
  }

  package {'tcpdump':
    ensure => '4.5.1-3.el7',
  }

}
