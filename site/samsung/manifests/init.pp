# /etc/puppetlabs/code/environments/production/site/samsung/manifests/init.pp
# Sample code to demonstrate Puppet for samsung

class samsung {
  $ntpservernm = ['105.128.81.1']
  $servicenm = ['NetworkManager','bmc-watchdog','ipmi','rhnsd','abrtd','rhsmcertd',
  'bluetooth','libvirt-guests','lldpad','ip6tables','cpuspeed','tog-pegasus','fcoe','fcoe-target']
  $resservicenm = ['nslcd', 'nscd', 'autofs']

  class { 'ntp':
    servers =>  $ntpservernm,
      }

  service { $servicenm:
    ensure =>  stopped,
    enable =>  false,
  }

  service { $resservicenm:
    restart => true,
  }

  package { 'hdf5-1.8.12-1.with.szip.encoder.el6.x86_64.rpm':
    ensure => present,
    source =>  'https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8.12/bin/RPMS/hdf5-1.8.12-1.with.szip.encoder.el6.x86_64.rpm'
  }

  package { 'hdf5-openmpi-1.8.5.patch1-7.el6.x86_64.rpm':
    ensure => present,
    source =>  'ftp://fr2.rpmfind.net/linux/epel/6/x86_64/hdf5-openmpi-devel-1.8.5.patch1-10.el6.x86_64.rpm'
  }

  package { 'meld-1.4.0-1.el6.rf.noarch.rpm':
    ensure => present,
    source =>  'ftp://ftp.univie.ac.at/systems/linux/dag/redhat/el6/en/i386/dag/RPMS/meld-1.4.0-1.el6.rf.noarch.rpm'
  }

  package { 'valgrind.i686':
    ensure => present,
  }

file { '/usr/lib64/libboost_regex.so.5':
  ensure => link,
  target => '/usr/lib64/libboost_regex.so.2',
}

file { '/project/EDA':
  ensure => link,
  target => '/EDA',
}

file { '/project/PRJ':
  ensure => link,
  target =>  '/PRJ',
}

mount { '/mnt':
  ensure  =>  'umounted',

}

  }
