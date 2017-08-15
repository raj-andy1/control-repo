# /etc/puppetlabs/code/environments/production/site/profile/manifests/demohttpd.pp
# Sample code calling the arapache class,making some small changes

class profile::demohttpd

{
  include cis
  include arapache
  include arinifile
  include arinifile::cachecatalog

  firewall { '1 allow http access':
  dport => 80,
  proto => tcp,
  action => accept,
}

Class['cis'] -> Class['arapache'] -> Firewall['1 allow http access']

}
