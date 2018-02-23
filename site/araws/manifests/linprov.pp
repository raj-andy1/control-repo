# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/linprov.pp
# Sample code to provision an AWS instance running RHEL

class araws::linprov (
  $pe_master = 'puppetmaster01.armusings.info',
  #'ec2-54-186-186-20.us-west-2.compute.amazonaws.com',
  $inst_nm = 'AndyR - Jenkins Server',
  $aws_region = 'us-west-2',
  $avza = 'us-west-2a',
  $img_id = 'ami-b55a51cc', #RHEL AMI id
  $inst_type = 't2.large',
  $snet = 'tse-us-west-2-avza',
  $secg = ['tse-us-west-2-crossconnect','tse-us-west-2-agents'],
  $iam_ip_arn = 'arn:aws:iam::610189707431:instance-profile/IAM_DNS_Role',
  $add_vol = false,
  $vol_nm = '/dev/sdb',
  $vol_sz = '8',
  $key_nm = 'andy.rajagopalan',
  $pe_role = 'jenkins-master',
  )
  {
  ec2_instance { $inst_nm:
    ensure            =>  present,
    region            => $aws_region,
    availability_zone => $avza,
    image_id          =>  $img_id,
    subnet            =>  $snet,
    security_groups   =>  $secg,
    instance_type     =>  $inst_type,
    iam_instance_profile_arn => $iam_ip_arn,
    user_data         => template('araws/linux_agent_pe_userdata.erb'),
    key_name          => $key_nm,
    tags              =>  {
        name       => 'andy.rajagopalan',
        department => 'tse',
        project    => 'self-practice',
        created_by => 'Andy R',
      }
    }
    if $add_vol {
      #add additional disks only if $add_vol = true
      Ec2_instance <|title == $inst_nm|> {
        block_devices => [
        {
          device_name           => $vol_nm,
          volume_size           => $vol_sz,
          delete_on_termination => true,
          volume_type          => 'gp2',
        }
      ]
    }
  }
}
include araws::linprov
