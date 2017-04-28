#/etc/puppetlabs/code/environments/production/role/manifests/webserver.pp
#This role would be made of all the profiles that need to be included to make a webserver work
#All roles should include the base profile

class role::webserver {

  include profile::linnode
  include profile::demohttpd

}
