# /etc/puppetlabs/code/environments/production/site/profile/manifests/nfsclient.pp
# Install nfs-client

class profile::nfsclient {
  class {'::nfs':
    client_enabled => true,
    }

  Nfs::Client::Mount <<| |>> {
    }
}
