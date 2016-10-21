# /etc/puppetlabs/code/environments/production/site/win/manifests/windj.pp

class win::windj {
  class {'domain_membership':
  domain  =>  'andyr.corp',
  username  =>  'Administrator',
  password  =>  'Puppetlabs01',
  join_options  =>  '3',
  }
}
