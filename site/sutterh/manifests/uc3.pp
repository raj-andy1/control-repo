# /etc/puppetlabs/code/environments/production/site/sutterh/manifests/uc3.pp
# Sample Puppet code to automate joining a domain using DSC

class sutterh::uc3 (
  $domainnm,
  $domainusernm,
  $domainpasswd,
  $ounm,
)

{
  reboot { 'dsc_reboot':
    message => 'DSC has requested a reboot',
    when    => pending,
  }

  dsc_xcomputer { 'JoinDomain':
    dsc_name       => $::hostname,
    dsc_domainname =>  $domainnm,
    dsc_credential => {
      user     =>  $domainusernm,
      password =>  $domainpasswd },
    dsc_joinou     => $ounm,
  }
}
