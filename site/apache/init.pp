# /etc/puppetlabs/code/environments/testenv/modules/apache/init.pp

class apache {
  package { "apache2":
  ensure  =>  present,
  }
}
