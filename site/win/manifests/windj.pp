# /etc/puppetlabs/code/environments/production/site/win/manifests/windj.pp
# Sample code that allows a computer to join a domain

class win::windj {
  class {'domain_membership':
    domain  =>  'andyr.corp',
    username  =>  'Administrator',
    password  =>  'Puppetlabs01',
    join_options  =>  '3',
  }
}
