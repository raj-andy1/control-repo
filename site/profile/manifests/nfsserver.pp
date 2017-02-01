# /etc/puppetlabs/code/environments/production/site/profile/manifests/ec2.pp
# Install nfs-server

class profile::nfsserver {
  include arnfs
}
