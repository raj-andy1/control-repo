# /etc/puppetlabs/code/environments/production/site/win/manifests/winusers.pp

class win::winusers{
  group { 'testgroup01':
    ensure => present,
  }

  user { ['testuser01','testuser02']:
    ensure  =>  present,
    groups =>  'testgroup01',
    password  => 'Puppetlabs01'
  }
}
