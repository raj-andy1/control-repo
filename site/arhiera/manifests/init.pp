# /etc/puppetlabs/code/environments/production/site/arhiera/manifests/init.pp
# Sample Puppet code to implement eyaml for encrypting sensitive data

class arhiera {
  class { 'hiera':
    hierarchy       => [
      'secure',
      'nodes/%{::trusted.certname}',
      '%{environment}',
      'common',
    ],

    eyaml           => true,
    eyaml_extension => 'eyaml',
  }
}
