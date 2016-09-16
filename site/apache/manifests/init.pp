# /etc/puppetlabs/code/environments/production/site/apache/init.pp

class apache {
  package { "apache2":
  ensure  =>  present,
  }
}
