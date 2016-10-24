# /etc/puppetlabs/code/environments/production/site/manage_users/manifests/testusers.pp

class testusers {
  $usernm = 'user01', 'user02'
  $groupnm  = => 'group01'
  user { $usernm:
    ensure  => present,
    groups  => $groupnm,
    comment =>  'Test users'
    home  =>  '/home/{$usernm}',
    }

  group { $groupnm:
    ensure  =>  present,
      
    }
}
