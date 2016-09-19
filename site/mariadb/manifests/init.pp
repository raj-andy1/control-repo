# /etc/puppetlabs/code/environments/production/site/mariadb/manifests/init.pp

class mariadb {
  $package_name = ['mariadb-server','mariadb']
  package { $package_name:
  ensure => present,
  }
  service {"mariadb":
  ensure  =>  running,
  enable  =>  true,
  }
}
