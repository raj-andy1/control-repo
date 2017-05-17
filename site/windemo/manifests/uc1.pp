# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc1.pp
# Sample Puppet code to modify registry keys in Windows

class windemo::uc1 {
# creating a dummy registry key
  registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet01':
    ensure  =>  present,
  }

# adding a registry value for above created registry key
  registry_value { 'HKLM\System\CurrentControlSet\Services\Puppet01\Description':
    ensure =>  present,
    type   => string,
    data   => 'some junk data',
  }

# combining above operations(disbabling the windows shutdown event tracker on non production systems)
  registry::value { 'ShutdownReasonOn':
    key  => 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Reliability',
    type => 'dword',
    data => '0',
  }
}
