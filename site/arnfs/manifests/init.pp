# /etc/puppetlabs/code/environments/production/site/arnfs/manifests/init.pp

class arnfs {
$servicenm  = ['rpcbind','nfs-server','nfs-lock','nfs-idmap']

  package { 'nfs-utils':
    ensure => present,
  }

  file {'/var/nfsshare':
    ensure =>  directory,
    mode   =>  '0777',
  }

  service { $servicenm:
    ensure => running,
    enable => true,
  }

}
