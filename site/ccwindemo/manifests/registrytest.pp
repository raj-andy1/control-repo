#
# Sample class for testing

class ccwindemo::registrytest {

registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet1':
    ensure => present,
}

}
include registrytest
