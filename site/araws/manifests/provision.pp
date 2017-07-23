# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/provision.pp
# Sample code to provision AWS instances

class araws::provision (
  $title =,
  $aws_region = "us-west-2",
  $avza = 'us-west-2a',
  $img_id =,
  $inst_type =,
  $snet=,
  $secg=,
  $vol_nm = ,
  $vol_sz =,
  $key_nm = 'andy.rajagopalan',
  )
  {
  ec2_instance { "${title}":
    ensure  =>  present,
    region  => $aws_region,
    availability_zone => $avza,
    image_id  =>  $img_id,
    subnet  =>  $snet,
    security_groups =>  $secg,
    instance_type =>  $inst_type,
    block_devices => [
    {
      device_name           => $vol_nm,
      volume_size           => $vol_sz,
      delete_on_termination => 'true',
      volume_type          => 'gp2',
      }
    ],
    user_data       => template('araws/agent_pe_userdata.erb'),
    key_name  => $key_nm ,
    tags  =>  {
        name  => 'andy.rajagopalan',
        department  => 'tse',
        project => 'internal-practice',
        created_by => 'Andy R',
  }
 }
}
