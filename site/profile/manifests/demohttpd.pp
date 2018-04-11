# /etc/puppetlabs/code/environments/production/site/profile/manifests/demohttpd.pp
# Sample code calling the arapache class,making some small changes

class profile::demohttpd

{
  #include cis
  include cis_rhel7
  include arapache

  firewall { '1 allow http access':
  dport  => 80,
  proto  => tcp,
  action => accept,
}

Class['cis_rhel7'] -> Class['arapache'] -> Firewall['1 allow http access']

}
