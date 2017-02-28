# /etc/puppetlabs/code/environments/production/site/sutterh/manifests/init.pp
# Sample code to demonstrate Puppet for Sutter Health

class sutterh {

  Class sutterh::uc1 -> Class sutterh::uc2 -> Class sutterh::uc3 -> Class sutterh::uc4

}
