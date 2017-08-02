# /etc/puppetlabs/code/environments/production/site/profile/manifests/demohttpd.pp
# Sample code calling the arapache class

class profile::demohttpd

{
  include cis
  include arapache

  firewall { '1 allow http access':
  dport => 80,
  proto => tcp,
  action => accept,
}

Class['cis'] -> Class['arapache'] -> Firewall['1 allow http access']

}
