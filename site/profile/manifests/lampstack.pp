
class profile::lampstack {

  notify { "this is ${fqdn}":}
  include manage_users
  include mysql::server
  include php

  class { 'apache': }

  class { 'wordpress':
  wp_owner  => 'wordpress',
  wp_group  => 'wordpress',
  db_user  => 'wordpress',
  db_password  => '$1$tPyS005D$BO2bEaAK/ufrBYJqcuzel0',
  install_dir =>  '/var/www/wordpress',
  create_db  => true,
  create_db_user  => true,
  }
}
