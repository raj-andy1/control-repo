# /etc/puppetlabs/code/environments/production/site/profile/manifests/testtrustedfact.pp
# Sample code to test a trusted fact that was set during agent install

class profile::testtrustedfact {
  if $trusted['extensions']['erp_sendmail_internal'] {
    notify {'Trusted fact is present':} }
  else {
    notify {'NOT PRESENT':}
  }
}
