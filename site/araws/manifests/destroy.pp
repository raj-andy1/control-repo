# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/destroy.pp
# Sample code to de-provision AWS instances

class araws::destroy (
  $aws_instance_name = 'Andy R Testing Agent - 13',
  )
{
  ec2_instance { "$aws_instance_name":
    region  =>  $araws::provision::aws_region,
    ensure  => absent,
  }
}
