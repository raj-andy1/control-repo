# /etc/puppetlabs/code/environments/production/site/profile/manifests/xomwin.pp

class profile::xomwin {

  notify { "this is ${fqdn}":}
  include win

}
