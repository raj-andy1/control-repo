# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/dnsprov.pp
# Sample code to create DNS A records

class araws::dnsprov {
  
 notify {"${trusted[extensions][pp_hostname]}.":}

 route53_a_record {"{$trusted.extensions.pp_hostname}.":
    ensure  => present,
    ttl => '300',
    values  => ["$::ec2_publicip"],
    zone => 'armusings.info.',
  }
}
