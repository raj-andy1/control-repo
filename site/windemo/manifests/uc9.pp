# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc9.pp
# Sample Puppet code to implement CIS benchmarks on windows

class windemo::uc9 ()

{
  class { 'harden_windows_server':
    is_domain_controller => false,
  }
}
