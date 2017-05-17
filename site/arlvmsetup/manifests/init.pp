# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm
class arlvmsetup {

  package {'lvm2':
    ensure => present,
  }

  file {'/yah':
    ensure => directory
  }

  class { 'lvm':
    require       => [
      Package['lvm2'],
      File['/yah'],
    ],
    volume_groups => {
      'myvg' => {
        physical_volumes => '/dev/xvdb' ,
        logical_volumes  => {
          'yah' => {
            'size'              => '6G',
            'mountpath'         => '/yah',
            'mountpath_require' => true,
          },
        },
      },
    },
  }
}
