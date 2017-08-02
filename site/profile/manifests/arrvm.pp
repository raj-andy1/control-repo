# /etc/puppetlabs/code/environments/production/site/profile/manifests/arrvm.pp

class profile::arrvm {
  include ::rvm

  rvm_system_ruby { 'ruby-2.3.3':
    ensure      => 'present',
    default_use => true,
  }

  rvm_gem { 'ruby-2.3.3/bundler':
      ensure  => latest,
      require => Rvm_system_ruby['ruby-2.3.3'],
  }
}
