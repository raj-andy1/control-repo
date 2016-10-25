# /etc/puppetlabs/code/environments/production/site/arntp/manifests/init.pp

class arntp {
  case $::operatingsystem {
    'Redhat','centos' : { $ntpservernm = 'nist-time-server.eoni.com' }
    'windows': { $ntpservernm = 'nist1-sj.witime.net' }
      }

  class { 'ntp':
    servers =>  [ $ntpservernm ],
      }
  }
