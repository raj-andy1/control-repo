# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/provision.pp
# Sample code to provision AWS instances

class araws::provision (
  $inst_nm = 'AndyR - Jenkins Server',
  $aws_region = 'us-west-2',
  $avza = 'us-west-2a',
  $img_id = 'ami-b55a51cc',
  $inst_type = 't2.large',
  $snet = 'tse-us-west-2-avza',
  $secg = ['tse-us-west-2-crossconnect','tse-us-west-2-agents],
  $add_vol = 'false',
  $vol_nm,
  $vol_sz,
  $key_nm = 'andy.rajagopalan',
  )
  {
  ec2_instance { "$inst_nm":
    ensure  =>  present,
    region  => $aws_region,
    availability_zone => $avza,
    image_id  =>  $img_id,
    subnet  =>  $snet,
    security_groups =>  $secg,
    instance_type =>  $inst_type,
    user_data       => template('araws/agent_pe_userdata.erb'),
    key_name  => $key_nm ,
    tags  =>  {
        name  => 'andy.rajagopalan',
        department  => 'tse',
        project => 'internal-practice',
        created_by => 'Andy R',
  },
 }
}
include araws::provision
