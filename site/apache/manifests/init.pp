# /etc/puppetlabs/code/environments/production/site/apache/init.pp

class apache {

  $conf_dir = '/var/www/html'

  package { "httpd":
  ensure  =>  present,
  }

  service {"httpd":
  ensure  =>  running,
  enable  =>  true,
  require  =>  Package['httpd'],
  #subscribe =>  File["${conf_dir}/info.php"],
  }

  file { "${conf_dir}/info.php":
    ensure  =>  file,
    mode  =>  '0755',
    source  =>  'puppet:///site/apache/info.php',
    require =>  Package['httpd'],
    notify  =>  Service['httpd'],
  }
}
