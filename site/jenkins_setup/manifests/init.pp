#####################################
#
#  init.pp
#
#####################################

class jenkins_setup {

  ### Defining variables
  $url = 'https://pkg.jenkins.io/redhat-stable/jenkins.repo'
  $install_dir = '/var/lib/jenkins'

  ### Java package installation
  package {'java':
    ensure => present,
  }

  ### Ensure Jenkins install dir is created/present
  file { $install_dir:
    ensure => directory,
  }

  ### Download Jenkins repo, before starting jenkins service
  file { '/etc/yum.repos.d/jenkins.repo':
    ensure => file,
    source => 'https://pkg.jenkins.io/redhat-stable/jenkins.repo',
    before => Service['jenkins'],
  }

  ### Importing Jenkins repo, checking if repo was refreshed/downloaded again
  exec { 'import_jenkins':
    command     =>  '/bin/rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key',
    cwd         => '/root',
    creates     =>  '/etc/sysconfig/jenkins',
    path        => ['/usr/bin', '/usr/sbin'],
    subscribe   => File['/etc/yum.repos.d/jenkins.repo'],
    refreshonly => true,
  }

  ### Ensuring Jenkins package is installed
  package {'jenkins':
    ensure => present,
  }

  ### Ensuring Jenkins config file is present for port config
  ### Require jenkins to be installed before ensuring presence of jenkins config file
  file {'/etc/sysconfig/jenkins':
    ensure  => file,
    require => Package['jenkins'],
  }

  ### Using inifile module from Puppet Forge
  ### Setting jenkins port number to 8000
  ini_setting { 'manage_jenkins_port':
    ensure  => present,
    path    => '/etc/sysconfig/jenkins',
    setting => 'JENKINS_PORT',
    value   => '8000',
    }

  ### Ensuring Jenkins service is running
  ### Before running jenkins service, we require prerequisits to be done
  service { 'jenkins':
    ensure  => running,
    enable  => true,
    require => [Package['java'], Package['jenkins'], File['/etc/sysconfig/jenkins']],
  }
}
