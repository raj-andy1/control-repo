# /etc/puppetlabs/code/environments/production/site/arapache/manifests/init.pp

class arapache {

  package { 'httpd':
  ensure  =>  present,
  }

  service { 'httpd':
  ensure  =>  running,
  enable  =>  true,
  require  =>  Package['httpd'],
  }

  file { '/var/www/html/info.php':
    ensure  =>  file,
    mode  =>  '0755',
    source  =>  'puppet:///modules/arapache/info.php',
    require =>  Package['httpd'],
    notify  =>  Service['httpd'],
  }
}
