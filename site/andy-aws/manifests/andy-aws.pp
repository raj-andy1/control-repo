class andy-aws {
  ec2_instance { 'test-andyr':
  ensure  =>  present,
  image_id  =>  'ami-775e4f16',
  instance_type =>  'm3.medium',
  key_name  =>  'andy.rajagopalan',
  tags  =>  {
      name  => 'andy.rajagopalan',
      department  => 'tse',
      project => 'internal-practice',
      created by => 'andyr@puppet.com',
    }
  }
}
