# /etc/puppetlabs/code/environments/production/site/manage_users/manifests/init.pp
# Sample code to add 2 users and 1 group for both CentOs and Windows boxes

class manage_users {
  user {'cmsuser':
    ensure   =>  present,
    groups   =>  wordpress,
    comment  =>  'This is a test user for managing CMS',
    password =>  '$1$D6CTx5Rl$F5LoY3.IXfTQX2cr27gIT1',
      }
  user {'wordpress':
    ensure   => present,
    groups   => wordpress,
    comment  =>  'This is a test user for managing wordpress instances',
    password => '$1$tPyS005D$BO2bEaAK/ufrBYJqcuzel0',
    }
  group {'wordpress':
    ensure  => present,
  }
}
