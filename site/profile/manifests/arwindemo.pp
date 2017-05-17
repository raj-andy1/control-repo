# /etc/puppetlabs/code/environments/production/site/profile/manifests/arwindemo.pp
# Sample code to demonstrate Puppet capabilities on Windows

class profile::arwindemo{

  include windemo::uc1
  include windemo::uc2
  include windemo::uc3
  include windemo::uc4

  Class['windemo::uc1'] -> Class['windemo::uc2'] -> Class['windemo::uc4'] -> Class['windemo::uc3']

}
