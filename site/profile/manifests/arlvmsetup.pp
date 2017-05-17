# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm

class profile::arlvmsetup {

  physical_volume { '/dev/xdvb':
    ensure => present,
  }

  volume_group { 'myvg':
    ensure           => present,
    physical_volumes => '/dev/xdvb',
  }

  logical_volume { 'mylv':
    ensure       => present,
    volume_group => 'myvg',
    size         => '8G',
  }

  filesystem { '/mylv':
    ensure  => present,
    fs_type => 'ext3',
    options => '-b 4096 -E stride=32,stripe-width=64',
  }
}
