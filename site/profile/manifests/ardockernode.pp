# /etc/puppetlabs/code/environments/production/site/profile/manifests/ardockernode.pp
# Sample code to install Docker CE on a linux node

class {'docker':
version => 'latest',
}
