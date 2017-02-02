# /etc/puppetlabs/code/environments/production/site/arinstall/manifests/init.pp
# Sample code to install package from nfsshare

class arinstall {

  package {'tcpdump-4.5.1-3.el7.x86_64.rpm':
    ensure   =>  installed,
    provider => rpm,
    source   =>  '/var/nfsshare/tcpdump-4.5.1-3.el7.x86_64.rpm',
  }
}
