# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm
class arlvmsetup {
  class { 'lvm':
    manage_pkg => true,
    volume_groups => {
      'myvg' => {
        physical_volumes => '/dev/xvdb' ,
        logical_volumes  => {
          'yah' => {
            'size'              =>  $araws::provision::vol_sz,
            'mountpath'         => '/yah',
          },
        },
      },
    },
  }
}
