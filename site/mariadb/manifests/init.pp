# /etc/puppetlabs/code/environments/production/site/mariadb/manifests/init.pp

class mariadb {
  $maria_package_name = ['mariadb-server','mariadb']
  package { $maria_package_name:
  ensure => present,
  }
  service {"mariadb":
  ensure  =>  running,
  enable  =>  true,
  }
}
