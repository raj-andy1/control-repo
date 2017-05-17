# /etc/puppetlabs/code/environments/production/profile/manifests/artomcatapp.pp
# sample profile to demonstrate tomcat installation on a new filesystem and Configurations
class profile::artomcatapp {
  include artomcatsetup
  include arlvmsetup

  Class['arlvmsetup'] -> Class['artomcatsetup']

}
