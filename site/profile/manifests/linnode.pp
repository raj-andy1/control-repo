# /etc/puppetlabs/code/environments/production/profile/manifests/linnode.pp
# Setup sample linux node for demo purpose

class profile::linnode (
  $linnodednsip,
  $linnodenfsnm,
  $ntpservernm,
  )

{
  include profile::nfsclient
  include manage_users::testusers

  class {'::ntp':
  servers => $ntpservernm,
  }
}
