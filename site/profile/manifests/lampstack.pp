
class profile::lampstack {

  notify { "this is ${fqdn}":}
  include manage_users
  include mysql::server
  include apache
  include apache::mod::php
  include wordpress

  apache::vhost { $::fqdn:
    port => '80',
    priority  => '00'
    docroot => '/opt/wordpress',
  }
}
