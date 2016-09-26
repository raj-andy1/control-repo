
class profile::lampstack {

  notify { "this is ${fqdn}":}
  include ::apache
  include manage_users
  include mysql
  include php

}
