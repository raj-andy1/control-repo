# /etc/puppetlabs/code/environments/production/site/manage_users/manifests/winusers.pp

class winusers{
  group { 'testgroup01':
  ensure => present,
  }

  user { 'testuser01','testuser02':
  ensure  =>  present,
  group =>  'testgroup01',
  password  => 'Puppetlabs01'
  }
}
