# /etc/puppetlabs/code/environments/production/site/arnfs/manifests/arnfsclient.pp
# Install nfs-client


class arnfs::arnfsclient {
  $nfsservernm = '192.168.0.55'

  class {'::nfs':
    client_enabled => true,
    }

  Nfs::Client::Mount <<||>> {
    }
  }
