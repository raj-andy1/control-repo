

class arinifile {
  ini_setting { 'change runinterval to 5d':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'agent',
    setting => 'runinterval',
    value   => '10d',
}
}
