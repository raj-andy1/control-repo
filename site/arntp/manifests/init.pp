# /etc/puppetlabs/code/environments/production/site/arntp/manifests/init.pp

class arntp {
  class { 'ntp':
    case $::operatingsystem {
      'Redhat' : { servers => 'nist-time-server.eoni.com' }
      'windows': { servers => 'nist1-sj.witime.net' }
        }
      }
    }
