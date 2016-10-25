# /etc/puppetlabs/code/environments/production/profile/manifests/linnode.pp

class profile::linnode {
  include arntp
  include testusers

}
