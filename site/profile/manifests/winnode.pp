# /etc/puppetlabs/code/environments/production/site/profile/manifests/winnode.pp
# Sample profile for preparing Windows nodes

class profile::winnode {
  include chocolatey
  include win::winprep
}
