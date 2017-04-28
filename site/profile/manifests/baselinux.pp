# base profile for all nodes running Linux
# This base profile should include any relevant DNS settings, hostname settings...etc
class profile::baselinux (
  $ntpservernm,
  )

{
class {'::ntp':
  servers => $ntpservernm,
  }

}
