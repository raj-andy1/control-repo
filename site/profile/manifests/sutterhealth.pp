# /etc/puppetlabs/code/environments/production/site/profile/manifests/sutterh.pp
# Sample code to demonstrate Puppet for sutterhealth

class profile::sutterhealth{

  include sutterh::uc1
  include sutterh::uc2
  include sutterh::uc3
  include sutterh::uc4

  Class['sutter::uc1'] -> Class['sutterh::uc2'] -> Class['sutterh::uc3'] -> Class['sutterh::uc4']

}
