# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/init.pp
# Sample code to provision AWS instances

class andyaws (
  $aws_region = "us-west-2a",
  )
  {
  ec2_instance { 'andyr-testing-agent':
    name  =>  'Andy R 2017.2 Testing Agent-11',
    ensure  =>  present,
    region  => $aws_region,
    image_id  =>  'ami-b55a51cc',
    subnet  =>  'subnet-b0f503d4',
    security_groups =>  ['sg-2bad064c','sg-28ad064f'],
    instance_type =>  't2.small',
    key_name  =>  'andy.rajagopalan',
    tags  =>  {
        name  => 'andy.rajagopalan',
        department  => 'tse',
        project => 'internal-practice',
        created_by => 'Andy R',
  }
 }
}
