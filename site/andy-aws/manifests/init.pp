class andyaws {
  ec2_instance { 'andyr-puppetmaster':
  ensure  =>  present,
  image_id  =>  'ami-775e4f16',
  instance_type =>  'm3.medium',
  key_name  =>  'andy.rajagopalan',
  iam_instance_profile_name =>  'puppetlabs_aws_provisioner',
  vpc =>  'vpc-e4e0581',
  tags  =>  {
      name  => 'andy.rajagopalan',
      department  => 'tse',
      project => 'internal-practice',
      created by => 'andyr@puppet.com',
    }
  }
}
