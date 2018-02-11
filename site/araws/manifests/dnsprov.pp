# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/dnsprov.pp
# Sample code to create DNS A records

class araws::dnsprov {
  route53_a_record {"$linprov::inst_nm.":
    ensure  => present,
    ttl => '300',
    values  => ["$::ec2_publicip"],
    zone => 'armusings.info.',
  }
}
