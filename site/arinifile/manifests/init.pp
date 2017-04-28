# /etc/puppetlabs/code/environments/production/site/arinifile/manifests/init.pp
# Sample code to change Puppet agent run interval to 10d from 30m

class arinifile {
  ini_setting { 'change runinterval to 10d':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'agent',
    setting => 'runinterval',
    value   => '10d',
  }
}
