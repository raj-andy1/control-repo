# /etc/puppetlabs/code/environments/production/site/profile/manifests/xomwin.pp

class profile::xomwin {

  notify { "this is ${fqdn}":}
  include chocolatey
  include win::winreg
  include win::winusers
  include win::winperm
  include win::wininstall
  include win::winfeat
}
