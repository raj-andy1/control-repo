# /etc/puppetlabs/code/environments/production/profile/manifests/rhel7node.pp
# Setup sample linux node for demo purpose

class profile::rhel7node {

  include arinifile::setenv
  include cis_rhel7

  class {'::ntp':
  servers => $profile::linnode::ntpservernm,
}
}
