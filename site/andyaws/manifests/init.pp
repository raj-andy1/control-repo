#change directory
class andyaws {
  ec2_instance { 'andyr-puppetmaster':
  ensure  =>  present,
  image_id  =>  'ami-775e4f16',
  instance_type =>  'm3.medium',
  key_name  =>  'andy.rajagopalan',
  vpc =>  'tse-vpc',
  iam_instance_profile_name =>  'puppetlabs_aws_provisioner',
  tags  =>  {
      name  => 'andy.rajagopalan',
      department  => 'tse',
      project => 'internal-practice',
      created_by => 'andyr@puppet.com',
    }
  }
}
