# /etc/puppetlabs/code/environments/production/profile/manifests/linnode.pp

class profile::linnode {
  include arntp
  include arapache
  include arinifile
  #include aropenssh
  include manage_users::testusers

}
