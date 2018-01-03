# /etc/puppetlabs/code/environments/production/site/profile/manifests/arrazorserver.pp
# Puppet code to configure a razor server


class profile::arrazorserver () {

  service {'firewalld':
    ensure => stopped,
    enable => false,
  }

  class { selinux:
    mode => 'enforcing',
    type => 'targeted',
}

}
