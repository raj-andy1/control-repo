# /etc/puppetlabs/code/environments/production/site/mysql/manifests/init.pp

class mysql {
  $mysql_package_name = ['mysql-server','mysql']
  package { $mysql_package_name:
  ensure => present,
  }
  service { "mysqld":
  ensure  =>  running,
  enable  =>  true,
  require =>  Package["${mysql_package_name}"],
  }
}
