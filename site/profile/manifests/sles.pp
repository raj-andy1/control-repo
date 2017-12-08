# /etc/puppetlabs/code/environments/production/profile/manifests/sles.pp
# Example code to setup Suse Enterprise Linux

class profile::sles {
  package { 'cron':
    ensure => installed,
  }
}
