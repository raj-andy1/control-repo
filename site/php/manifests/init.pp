# /etc/puppetlabs/code/environments/production/site/php/manifests/init.pp

class php{
  package {'php':
  name  =>  ['php','php-mysql'],
  ensure  = > present
  }
}
