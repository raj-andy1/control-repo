# /etc/puppetlabs/code/environments/production/site/arapache/manifests/init.pp
# Sample Puppet code to install httpd and provide a sample webpage

class arapache {

  package { 'httpd':
    ensure  =>  present,
  }

  service { 'httpd':
    ensure  =>  running,
    enable  =>  true,
    require =>  Package['httpd'],
  }

  file { '/var/www/html/index.html':
    ensure  =>  file,
    mode    =>  '0755',
    source  =>  'puppet:///modules/arapache/index1.html',
    require =>  Package['httpd'],
    notify  =>  Service['httpd'],
  }
}
