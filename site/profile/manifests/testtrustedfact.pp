# /etc/puppetlabs/code/environments/production/site/profile/manifests/testtrustedfact.pp
# Sample code to use the puppet agent module to test a trusted fact

class profile::testtrustedfact {
  if $trusted['extensions']['erp_sendmail_internal'] {
    notify {'Trusted fact is present':} }
  else {
    notify {'NOT PRESENT':}
  }
}
