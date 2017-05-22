# /etc/puppetlabs/code/environments/production/site/arinifile/manifests/setenv.pp
# Sample code to change Puppet environments

class arinifile::setenv {
  ini_setting { 'change environment value':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'agent',
    setting => 'environment',
    value   => $::environment,
  }
}
