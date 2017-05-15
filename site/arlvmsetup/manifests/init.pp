# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm
class arlvmsetup {

lvm::physical_volume { '/dev/sdb':
  ensure => present,
}

lvm::volume_group { 'myvg':
  ensure           => present,
  physical_volumes => '/dev/hdc',
}

lvm::logical_volume { 'mylv':
  ensure       => present,
  volume_group => 'myvg',
  size         => '20G',
}

lvm::filesystem { '/myvg/mylv':
  ensure  => present,
  fs_type => 'ext3',
  options => '-b 4096 -E stride=32,stripe-width=64',
  }
}
