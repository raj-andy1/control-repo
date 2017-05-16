# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm
class arlvmsetup {

  class { 'lvm':
    volume_groups    => {
      'myvg' => {
        physical_volumes => '/dev/sda2',
        logical_volumes  => {
          'yah'    => {'size' => '8G'},
          },
        },
      },
    },
  }
