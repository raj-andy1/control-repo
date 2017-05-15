# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm
class arlvmsetup (
  $phyvolname,
  $vgname,
  $lvname,
  $fsname,
  )
{
physical_volume { '$phyvolname':
  ensure => present,
  }

volume_group { '$vgname':
  ensure           => present,
  physical_volumes => '/dev/hdc',
  }

logical_volume { '$lvname':
  ensure       => present,
  volume_group => 'myvg',
  size         => '20G',
  }

filesystem { '/dev/myvg/mylv':
  ensure  => present,
  fs_type => 'ext3',
  options => '-b 4096 -E stride=32,stripe-width=64',
  }
}
