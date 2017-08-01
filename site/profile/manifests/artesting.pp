# /etc/puppetlabs/code/environments/production/site/profile/manifests/artesting.pp
# Sample code to prep a test Server

class profile::artesting {
  package {"rubygems": ensure => present,}
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
  package {"onceover": provider => puppet_gem, require => Package['rubygems']}
}
