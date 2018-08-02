# /etc/puppetlabs/code/environments/production/site/profile/manifests/mypythonapp.pp
# Sample Puppet code to setup apache and other stuff for mypythonapp

class profile::mypythonapp (
  $packages = [],
  $pip_packages = ['flask','flask-mysql']
)

{
  Package { ensure => 'installed'}
  package { $packages: }
  package { $pip_packages: provider => 'pip'}
  package { 'wandisco-git': source => 'http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm'} ->
  package {'git':}

  class {'apache':
  default_vhost => 'false',
  }

  apache::mod { 'mod_wsgi':}

  apache::vhost {'mypythonapp.ar-gcp.tsedemos.com':
  port => '80',
  docroot => '/var/www/mypythonapp',
  }
}
