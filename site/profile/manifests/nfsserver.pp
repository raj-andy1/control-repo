# /etc/puppetlabs/code/environments/production/site/profile/manifests/nfsserver.pp
# Install nfs-server

class profile::nfsserver {
  include arnfs
}
