# /etc/puppetlabs/code/environments/production/profile/manifests/linnode.pp
# Setup sample linux node for demo purpose

class profile::linnode {
  #include arntp
  #include arapache
  include arinifile
  #include aropenssh
  #include manage_users::testusers
  include profile::nfsclient

  package {'tcpdump-4.5.1-3.el7.x86_64.rpm':
    ensure   =>  installed,
    provider => rpm,
    source   =>  '/var/nfsshare/tcpdump-4.5.1-3.el7.x86_64.rpm',
    require  => Class['profile::nfsclient'],
  }

}
