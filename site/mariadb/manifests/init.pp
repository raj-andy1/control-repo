# /etc/puppetlabs/code/environments/production/site/mariadb/manifests/init.pp

class mariadb {
  package {'mariadb-server':
  name=>  ['mariadb-server','mariadb'],
  ensure => present,
  }
  service {"mariadb":
  ensure  =>  running,
  enable  =>  true,
  }
}
