# /etc/puppetlabs/code/environments/production/site/win/manifests/winreg.pp
class win::winreg {
  registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet01':
  ensure  =>  present,
  }
  registry_value { 'HKLM\System\CurrentControlSet\Services\Puppet01\Description':
  ensure  =>  present,
  type  => string,
  data => 'some junk data',
  }

 registry::value { 'Description':
  key =>  'HKLM\System\CurrentControlSet\Services\Puppet02',
  data => 'Yahoo101',
 }
}
