# /etc/puppetlabs/code/environments/production/site/arlvmsetup/manifests/init.pp
# sample profile to demonstrate puppet lvm

class profile::arlvmsetup {

  class { 'lvm':
    volume_groups => {
      'vg_data' => {
          physical_volumes  => [ '/dev/sdb' ],
            logical_volumes => {
              'yah' => {
                'size' => '8G',
                },
              },
            },
          },
        }
      }
