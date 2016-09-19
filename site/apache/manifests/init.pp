# /etc/puppetlabs/code/environments/production/site/apache/init.pp

class apache {
  package { "httpd":
  ensure  =>  present,
  }
  service {"httpd":
  ensure  =>  running,
  enable  =>  true,
  require  =>  Package['httpd'],
  }
}
