# /etc/puppetlabs/code/environments/production/profile/manifests/rhel7node.pp
# Setup CIS benchmark on RHEL nodes

class profile::rhel7node {

  include arinifile::setenv
  include cis_rhel7

  class {'::ntp':
  servers => $profile::linnode::ntpservernm,
}
}
