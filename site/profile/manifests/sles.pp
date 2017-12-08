# /etc/puppetlabs/code/environments/production/profile/manifests/sles.pp
# Example code to setup Suse Enterprise Linux

clas profile::sles {
  package { 'cron':
    ensure => installed,
  }
}
