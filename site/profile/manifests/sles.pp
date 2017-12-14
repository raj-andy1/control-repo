# /etc/puppetlabs/code/environments/production/profile/manifests/sles.pp
# Example code to setup Suse Enterprise Linux
# uses puppet-archive module

class profile::sles {
  package { 'cron':
    ensure => installed,
  }

  archive {'/tmp/mpfr-2.4.2.tar.bz2':
    ensure =>  present,
    extract => true,
    extract_path => '/home/ec2-user/gcc-6.4.0',
    source  =>  'ftp://gcc.gnu.org/pub/gcc/infrastructure/mpfr-2.4.2.tar.bz2'
  }

}
