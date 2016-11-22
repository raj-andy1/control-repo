# /etc/puppetlabs/code/environments/production/site/profile/manifests/demohttpd.pp
# Sample code calling the arapache class

class profile::demohttpd {

  include arapache

}
