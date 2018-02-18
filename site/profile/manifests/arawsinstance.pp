# /etc/puppetlabs/code/environments/production/site/profile/manifests/awsinstance.pp
# Sample code to setup an aws instance

class profile::arawsinstance {

  include araws::instancesetup
  include araws::dnsprov
  
  Class['araws::instancesetup'] -> Class['araws::dnsprov']
}
