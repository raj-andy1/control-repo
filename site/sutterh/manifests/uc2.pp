# /etc/puppetlabs/code/environments/production/site/sutterh/manifests/uc2.pp
# Sample Puppet code to add users to groups and enforce group membership

class sutterh::uc2 {
  $usernm = ['test-user01','test-user02']
  $groupnm = 'testusers'

  user { $usernm :
    ensure => present,
  }

  group { $groupnm:
    ensure => present,
    member => $usernm,
  }
}
