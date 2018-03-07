# /etc/puppetlabs/code/environments/production/site/profile/manifests/arcifsmount.pp
# Sample code to mount a CIFS volume on a linux VM

class profile::arcifsmount (
  $mnt_usernm = 'test-user01',
  $mnt_passwd = 'Puppetlabs01',
)

{ 
  package { 'cifs-utils':
    ensure => 'present'
  } ->

mount { '/ar':
ensure => mounted,
device => '//ar-win-1/ar',
options => 'user=test-user01,pass="Puppetlabs01"',
fstype => 'cifs',
  }
}

