# /etc/puppetlabs/code/environments/production/site/profile/manifests/windc.pp
class profile::windc {
  include win::windom
}
