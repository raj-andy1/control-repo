# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/dnsprov.pp
# Sample code to create DNS A records

class araws::dnsprov {
  route53_a_record {'demoagent03.armusings.info.':
    ensure  => present,
    values  => ['54.212.230.58'],
    zone => 'armusings.info.'

  }
}
