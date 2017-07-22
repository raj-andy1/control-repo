# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/provision.pp
# Sample code to provision AWS instances

class araws::provision (
  $aws_region = "us-west-2",
  $agent_num = "14",
  $avza =,
  $img_id =,
  $inst_type =,
  $snet=,
  $secg=,
  $vol_nm = ,
  $vol_sz =,
  $key_nm =,
  )
  {
  ec2_instance { "Andy R Testing Agent - ${agent_num}":
    ensure  =>  present,
    region  => $aws_region,
    availability_zone => 'us-west-2a',
    image_id  =>  'ami-b55a51cc',
    subnet  =>  'tse-us-west-2-avza',
    security_groups =>  [
    'tse-us-west-2-crossconnect',
    'tse-us-west-2-agents'
    ],
    instance_type =>  't2.small',
    block_devices => [
    {
      device_name           => '/dev/sdb',
      volume_size           => 8,
      delete_on_termination => 'true',
      volume_type          => 'gp2',
      }
    ],
    user_data       => template('araws/agent_pe_userdata.erb'),
    key_name  =>  'andy.rajagopalan',
    tags  =>  {
        name  => 'andy.rajagopalan',
        department  => 'tse',
        project => 'internal-practice',
        created_by => 'Andy R',
  }
 }
}
