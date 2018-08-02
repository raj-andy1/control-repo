# /etc/puppetlabs/code/environments/production/site/profile/manifests/mypythonapp.pp
# Sample Puppet code to setup apache and other stuff for mypythonapp

class profile::mypythonapp (
  $packages = ['python-pip'],
  $pip_packages = ['flask','flask-mysql']
)

{
  Package { ensure => 'installed'}
  package { $packages: } ->
  package { $pip_packages: provider => 'pip'}
  package { 'wandisco-git-release': source => 'http://opensource.wandisco.com/centos/7/git/x86_64/wandisco-git-release-7-2.noarch.rpm'} ->
  package {'git':}

  file {'/var/www/mypythonapp':
  ensure => directory,
  mode => '0755',
  owner => 'apache',
  group => 'apache',
  } ->
  vcsrepo {'/var/www/mypythonapp':
  ensure => present,
  provider => git,
  source => 'git://github.com/raj-andy1/PythonApp.git',
  require => Package['git'],
  }

  class {selinux:
  mode => 'permissive',
  type => 'targeted',
  }
  
  class {'apache':
  default_vhost => false,
  } ->
  
  class {'apache::mod::wsgi':}->
  
  apache::vhost {'mypythonapp.ar-gcp.tsedemos.com':
  port => '80',
  priority => '15'
  wsgi_application_group      => '%{GLOBAL}',
  wsgi_daemon_process         => 'pythonapp',
  wsgi_daemon_process_options => {
    user => 'apache',
    group => 'apache',
    threads      => '15',
    python-path => '/var/www/mypythonapp'
  },
  wsgi_import_script          => '/var/www/mypythonapp/pythonapp.wsgi',
  wsgi_process_group          => 'pythonapp',
  wsgi_script_aliases         => { '/' => '/var/www/mypythonapp/pythonapp.wsgi' }
  }
}
