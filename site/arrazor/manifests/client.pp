#/etc/puppetlabs/code/environments/production/site/arrazor/manifests/client.pp
# Installs the Razor client gem
#

class arrazor::client {

  package { 'rubygems':
    ensure => present,
  }

  package {'wget':
  ensure => present,
  }

  package { 'pe-razor-client':
    ensure   => 'present',
    provider => gem,
    require  => Package['rubygems'],
  }
}
