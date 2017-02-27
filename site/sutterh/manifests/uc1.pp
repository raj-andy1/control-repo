# /etc/puppetlabs/code/environments/production/site/sutterh/manifests/uc1.pp
# Sample code to demonstrate Puppetcode to modify registry keys for sutterhealth

class sutterh::uc1 {
# creating a dummy registry key
  registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet01':
    ensure  =>  present,
  }

# adding a registry value for above created registry key
  registry_value { 'HKLM\System\CurrentControlSet\Services\Puppet01\Description':
    ensure  =>  present,
    type  => string,
    data => 'some junk data',
  }

# updating an existing registry key (disbabling the windows shutdown event tracker on non production systems)
registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Reliability\ShutdownReasonOn':
  ensure => present,
  type => ‘dword’,
  data => ‘0’,
  }
}
