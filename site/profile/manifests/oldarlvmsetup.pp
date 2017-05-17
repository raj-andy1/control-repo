# /etc/puppetlabs/code/environments/production/profile/manifests/oldarlvmsetup.pp
# sample profile to demonstrate puppet lvm

class profile::oldarlvmsetup {

  physical_volume { '/dev/xvdb':
    ensure => present,
  }

  volume_group { 'myvg':
    ensure           => present,
    physical_volumes => '/dev/xvdb',
  }

  logical_volume { 'mylv':
    ensure       => present,
    volume_group => 'myvg',
    size         => '6G',
  }

  filesystem { '/dev/myvg/mylv':
    ensure  => present,
    fs_type => 'ext3',
    options => '-b 4096 -E stride=32,stripe-width=64',
  }
}
