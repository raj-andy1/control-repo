# /etc/puppetlabs/code/environments/production/site/profile/manifests/demohttpd.pp
# Sample code calling the arapache class

class profile::demohttpd

{
  include cis
  include arapache

  exec {'Allow HTTP':
  command => '/usr/bin/firewall-cmd --zone=public --permanent --add-service=http',
  creates => '/tmp/fwlhttp',
}

Class['cis'] -> Class['arapache'] -> Exec['Allow HTTP'] ~> Service['firewalld']

}
