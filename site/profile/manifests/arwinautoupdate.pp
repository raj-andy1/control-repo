# /etc/puppetlabs/code/environments/production/site/profile/manifests/arwinautoupdate.pp
# Sample class for configuring windows autoupdate settings

class profile::arwinautoupdate {
  class { 'windows_autoupdate': no_auto_update => '1' }
}
