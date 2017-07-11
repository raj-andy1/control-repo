# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/init.pp
# Sample code to provision AWS instances

class andyaws (
  $agent_num,
  $aws_region = "us-west-2",
  )
  {
  ec2_instance { 'andyr-testing-agent':
    name  =>  'Andy R 2017.2 Testing Agent ${agent_num}  ',
    ensure  =>  present,
    region  => $aws_region,
    image_id  =>  'ami-b55a51cc',
    instance_type =>  't2.small',
    key_name  =>  'andy.rajagopalan',
    subnet  =>  'vpc-81a24ee5',
    security_groups =>  ['sg-2bad064c','sg-28ad064f'],
    tags  =>  {
        name  => 'andy.rajagopalan',
        department  => 'tse',
        project => 'internal-practice',
        created_by => 'Andy R',
  }
 }
}
