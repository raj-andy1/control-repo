# /etc/puppetlabs/code/environments/production/profile/manifests/linnode.pp
# Setup sample linux node for demo purpose

class profile::linnode {
  #include arntp
  #include arapache
  include arinifile
  #include aropenssh
  include manage_users::testusers

}
