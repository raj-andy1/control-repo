# /etc/puppetlabs/code/environments/production/site/profile/manifests/arjenkins.pp
# Sample code to install Jenkins master

class profile::arjenkins {

  include jenkins

  jenkins::plugin {'git':
    version =>  '3.4.1',

  }
}
