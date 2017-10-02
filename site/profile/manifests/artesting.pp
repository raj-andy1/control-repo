# /etc/puppetlabs/code/environments/production/site/profile/manifests/artesting.pp
# Sample code to prep a test Server

class profile::artesting {

  yumrepo { 'rhui-REGION-rhel-server-optional':
  enabled => yes,
  }

  yumrepo { 'rhui-REGION-rhel-server-debug-optional':
  enabled => yes,
  }

  package {"rubygems": ensure => present,}
  package {"ruby-devel": ensure => present,
  require => [
  Yumrepo['rhui-REGION-rhel-server-optional'],
  Yumrepo['rhui-REGION-rhel-server-debug-optional'],
  ]
}
  package {"mlocate": ensure => present,}
  package {"git": ensure => present,}
  package {"make": ensure => present,}
  package {"gcc": ensure => present,}
  package {"gcc-c++": ensure => present,}
  package {"libxml2-devel": ensure => present,}
  package {"libxslt-devel": ensure => present,}
  package {"bundler": provider => gem, require => Package['rubygems']}
  package {"beaker": ensure => present, provider => puppet_gem, require => Package['rubygems']}
  package {"puppet-lint": provider => puppet_gem, require => Package['rubygems']}
  package {"semantic_puppet": provider => puppet_gem, require => Package['rubygems']}
  package {"onceover": provider => gem, require => Package['rubygems']}
}
