# /etc/puppetlabs/code/environments/production/site/profile/manifests/nfsclient.pp
# Install nfs-client

class profile::nfsclient {
  include arnfs::arnfsclient

}
