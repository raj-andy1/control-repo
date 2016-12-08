# /etc/puppetlabs/code/environments/production/site/win/manifests/winusers.pp
# Sample code that adds local users

class win::winusers{
  $groupname =
  $username =

  group { $groupname:
    ensure => present,
  }

  user { $username:
    ensure   =>  present,
    groups   =>  'testgroup01',
    password => 'Puppetlabs01'
  }
}
