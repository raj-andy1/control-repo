# /etc/puppetlabs/code/environments/production/site/arazure/manifests/provision.pp
# Sample code to provision azure instances

class arazure::provision {
  azure_vm { 'arsample':
  ensure         => present,
  location       => 'eastus',
  image          => 'canonical:ubuntuserver:14.04.2-LTS:latest',
  user           => 'azureuser',
  password       => 'Password_!',
  size           => 'Standard_A0',
  resource_group => 'testresacc01',
}
}
