# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm
class arlvmsetup {
  class { 'lvm':
    volume_groups => {
      'myvg' => {
        physical_volumes => '/dev/xvdb' ,
        logical_volumes  => {
          'yah' => {
            'size'              => '6G',
            'mountpath'         => '/yah',
          },
        },
      },
    },
  }
}
