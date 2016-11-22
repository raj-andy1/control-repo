# /etc/puppetlabs/code/environments/production/site/profile/manifests/demousers.pp
# Sample code calling the manage_users class to setup 2 users

class profile::demousers {
  include manage_users
}
