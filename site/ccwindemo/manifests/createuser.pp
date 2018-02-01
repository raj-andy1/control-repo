#
# Sample class for testing

class ccwindemo::createuser {
	user {'Test1':
	ensure => present,
	}
}
include createuser
