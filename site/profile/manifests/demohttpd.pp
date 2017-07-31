# /etc/puppetlabs/code/environments/production/site/profile/manifests/demohttpd.pp
# Sample code calling the arapache class

class profile::demohttpd

{
  include cis_rhel7
  include arapache

}
