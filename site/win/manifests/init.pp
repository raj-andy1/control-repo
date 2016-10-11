# /etc/puppetlabs/code/environments/production/site/win/manifests/init.pp
class win {
  registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet01':
  ensure  =>  present,
  }
  registry_value { 'HKLM\System\CurrentControlSet\Services\Puppet01\Description':
  ensure  =>  present,
  type  => string,
  data => 'some junk data',
  }

 registry::value { 'Puppet02':
  key =>  'HKLM\System\CurrentControlSet\Services',
  data => 'Yahoo101',
 }
}
