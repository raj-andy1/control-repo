
class profile::lampstack {

  notify { "this is ${fqdn}":}
  include manage_users
  include mysql::server
  include apache
  include apache::mod::php

  apache::vhost { $::fqdn:
    port => '80',
    docroot => '/opt/wordpress',
  }

  class { 'wordpress':
  wp_owner  => 'wordpress',
  wp_group  => 'wordpress',
  db_user  => 'wordpress',
  db_password  => '$1$tPyS005D$BO2bEaAK/ufrBYJqcuzel0',
  create_db  => true,
  create_db_user  => true,
  }
}
