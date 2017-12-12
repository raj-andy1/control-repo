# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm
class arlvmsetup {
  class { 'lvm':
    manage_pkg => true,
    volume_groups => {
      'myvg' => {
        physical_volumes => '/dev/xvdb' ,
        logical_volumes  => {
          'nfsshare' => {
            'size'              =>  ::disks.xvdb.size,
            'mountpath'         => '/var/nfsshare',
          },
        },
      },
    },
  }
}
