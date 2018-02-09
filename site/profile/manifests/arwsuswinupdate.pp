# /etc/puppetlabs/code/environments/production/site/profile/manifests/arwsuswinupdate.pp
# Sample class for configuring windows autoupdate settings

class profile::arwsuswinupdate {
  class {'wsus_client':
    no_auto_update => true,
  }
}
