# /etc/puppetlabs/code/environments/production/site/profile/manifests/newarlvmsetup.pp
# sample profile to demonstrate puppet lvm
class profile::newarlvmsetup {
  file {'/yah':
    ensure => directory
  }

  class { 'lvm':
    volume_groups    => {
      'myvg' => {
        physical_volumes => '/dev/xvdb' ,
        logical_volumes  => {
          'yah' => {
            'size'              => '8G',
            'mountpath'         => '/yah',
            'mountpath_require' => true,
          },
        },
      },
    },
  }
}
