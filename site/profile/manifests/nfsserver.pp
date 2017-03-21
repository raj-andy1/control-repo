# /etc/puppetlabs/code/environments/production/site/profile/manifests/nfsserver.pp
# Install nfs-server

class profile::nfsserver {
  file {'/var/nfsshare':
    ensure => directory,
    mode   => '0777',
  }

  class { '::nfs':
    server_enabled  => true
  }

  nfs::server::export{ '/var/nfsshare':
    ensure  => 'mounted',
    clients => '192.168.0.0/16(rw,insecure,async,no_root_squash) localhost(rw)',
  }
}
