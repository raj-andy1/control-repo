# /etc/puppetlabs/code/environments/production/site/profile/manifests/awsinstance.pp
# Sample code to setup an aws instance

class profile::arawsinstance () {

  package { 'aws-sdk':
  ensure => present, 
  }
}
