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

  class {'apache':
  default_vhost => 'false'
  }

  apache::vhost {'mypythonapp.ar-gcp.tsedemos.com':
  port => '80'
  docroot => '/var/www/mypythonapp'

  }
}
