# /etc/puppetlabs/code/environments/production/site/mariadb/manifests/server.pp

class mariadb::server{

  $mysql_password = '$1$4laP3JKW$mfhNrVY9/WXeJEDm/Ue.N0'

  file { "/var/lib/mysql/my.cnf":
    owner => "mysql", group => "mysql",
    source => "puppet:///modules/mariadb/my.cnf",
    notify => Service["mariadb"],
    require => Package["mariadb"],
  }

  file { "/etc/my.cnf":
    require => File["/var/lib/mysql/my.cnf"],
    ensure => "/var/lib/mysql/my.cnf",
  }

  exec { "set-mysql-password":
    unless => "mysql -u root -p\"${mysql_password}\" status",
    path => ["/bin", "/usr/bin"],
    command => "mysqladmin -uroot password \"${mysql_password}"\",
    require => Service["mariadb"],
  }
}
