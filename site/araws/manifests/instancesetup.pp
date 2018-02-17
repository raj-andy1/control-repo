
# /etc/puppetlabs/code/environments/production/site/araws/manifests/instancesetup.pp
# Sample code to setup an aws instance with the correct gems

class araws::instancesetup () {

  package { 'aws-sdk':
  ensure => present, 
  provider => puppet_gem,
  }

  package { 'retries':
  ensure => present,
  provide => puppet_gem,
  }
}
