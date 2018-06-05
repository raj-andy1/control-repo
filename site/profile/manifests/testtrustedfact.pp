# /etc/puppetlabs/code/environments/production/site/profile/manifests/testtrustedfact.pp
# Sample code to use the puppet agent module to test a trusted fact

class profile::testtrustedfact {
  if $trusted['extensions']['erp_sendmail_internal'] {
    notice ('Trusted fact is present') }
  else {
    notice ('NOT PRESENT')
  }
}
