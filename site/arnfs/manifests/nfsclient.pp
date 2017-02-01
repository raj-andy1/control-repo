# /etc/puppetlabs/code/environments/production/site/arnfs/manifests/nfsclient.pp
# Install nfs-client


class arnfs::nfsclient {
  $nfsservernm = 192.168.0.55

  class {'::nfs':
    client_enabled  => true,
  }
  Nfs::Client::Mount {'/var/nfsshare':
    server  => $nfsservernm
  }
}
