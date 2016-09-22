# /etc/puppetlabs/code/environments/production/site/mysql/manifests/init.pp

class mysql {
  $mysql_package_name = ['mysql-server','mysql']
  package { $mysql_package_name:
  ensure => present,
  }
  service { $mysql_package_name:
  ensure  =>  running,
  enable  =>  true,
  }
}
