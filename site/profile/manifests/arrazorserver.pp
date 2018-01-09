# /etc/puppetlabs/code/environments/production/site/profile/manifests/arrazorserver.pp
# Puppet code to configure a razor server


class profile::arrazorserver () {

  include pe_razor
  include arrazor::client
  include arrazor::setupdnsmasq

  service {'firewalld':
    ensure => stopped,
    enable => false,
  }

  class { selinux:
    mode => 'disabled',
    type => 'targeted',
  }
}
