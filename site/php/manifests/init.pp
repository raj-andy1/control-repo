# /etc/puppetlabs/code/environments/production/site/php/manifests/init.pp

class php{
  $php_package_name = ['php','php-mysql']
  package {$php_package_name:
  ensure  => present
  }
}
