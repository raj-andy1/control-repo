# /etc/puppetlabs/code/environments/production/site/arntp/manifests/init.pp

class arntp {
  class  {'ntp':
  $ntpservernm = $::os["name"] ? {
    'Redhat'  =>  'nist-time-server.eoni.com',
    'windows' =>  'nist1-sj.witime.net'
      }
    servers => $ntpservernm,
    }
  }
