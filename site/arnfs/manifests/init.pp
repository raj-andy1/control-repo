# /etc/puppetlabs/code/environments/production/site/arnfs/manifests/init.pp

class arnfs {
  file {'var/nfsshare':
    ensure => directory,
    mode   => '0777',

  }
  node 'server' {
  include nfs::server
  nfs::server::export{ '/var/nfsshare':
  ensure  => 'mounted',
  clients => '192.168.0.0/16(rw,insecure,async,no_root_squash) localhost(rw)',

}
