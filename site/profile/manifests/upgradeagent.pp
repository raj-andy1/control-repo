# /etc/puppetlabs/code/environments/production/site/profile/manifests/upgradeagent.pp
# Sample code to use the puppet agent module to upgrade older versions of puppet agent

class profile::upgradeagent {

class {'::puppet_agent':
    package_version => latest,
  }

}
