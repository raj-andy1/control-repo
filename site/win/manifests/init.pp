# /etc/puppetlabs/code/environments/production/site/win/manifests/init.pp
class xom {
  registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet':
  ensure  =>  present,

  }
}
