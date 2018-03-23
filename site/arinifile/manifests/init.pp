# /etc/puppetlabs/code/environments/production/site/arinifile/manifests/init.pp
# dependent on the https://forge.puppet.com/puppetlabs/inifile
# Sample code to change Puppet agent run interval to 10d from 30m

class arinifile (
  $pathnm = $::operatingsystem ? {
    'windows' => 'C:/ProgramData/PuppetLabs/puppet/etc/puppet.conf',
    default => '/etc/puppetlabs/puppet/puppet.conf',
  },
  $runint = '3600s',
  )

{
  ini_setting { 'change runinterval':
    ensure  => present,
    path    => $pathnm,
    section => 'agent',
    setting => 'runinterval',
    value   => $runint,
  }
}
