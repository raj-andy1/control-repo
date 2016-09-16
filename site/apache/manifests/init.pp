# /etc/puppetlabs/code/environments/production/site/apache/init.pp

class apache {
  package { "httpd":
  ensure  =>  present,
  }
}
