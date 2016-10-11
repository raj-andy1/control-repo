# /etc/puppetlabs/code/environments/production/site/win/manifests/init.pp
class win {
  registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet01':
  ensure  =>  present,
  }

 registry::value { 'Puppet02':
  key =>  'HKLM\System\CurrentControlSet\Services\',
  data  => 'some user_data',
 }
}
