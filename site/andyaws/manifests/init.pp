# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/init.pp
class andyaws {
  ec2_instance { 'andyr-puppetmaster':
  ensure  =>  stopped,
    }
  ec2_instance { 'andyr-puppetmaster01':
    ensure  =>  present,
    image_id  =>  'ami-775e4f16',
    instance_type =>  'm3.large',
    key_name  =>  'andy.rajagopalan',
    iam_instance_profile_name =>  'puppetlabs_aws_provisioner',
    tags  =>  {
        name  => 'andy.rajagopalan',
        department  => 'tse',
        project => 'internal-practice',
        created_by => 'andyr@puppet.com',
  }
 }
}
