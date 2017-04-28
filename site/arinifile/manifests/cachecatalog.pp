# /etc/puppetlabs/code/environments/production/site/arinifile/manifests/cachecatalog.pp
# Sample code to change Puppet agent to cache catalog

  class arinifile::cachecatalog {
    ini_setting { 'change cache catalog value':
      ensure  => present,
      path    => '/etc/puppetlabs/puppet/puppet.conf',
      section => 'agent',
      setting => 'use_cached_catalog',
      value   => true,
    }
}
