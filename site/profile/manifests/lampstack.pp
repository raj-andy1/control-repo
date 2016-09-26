
class profile::lampstack {

  notify { "this is ${fqdn}":}
  include ::apache
  include manage_users
  include mysql::server
  include php

}
