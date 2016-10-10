# /etc/puppetlabs/code/environments/production/site/andyaws/manifests/linuxagent.pp

class linuxagent {
  $pe_master_hostname   = 'ec2-54-184-162-186.us-west-2.compute.amazonaws.com'
  #$pe_version_string    = '2015.2.2'
  #$agent_version_string = '1.2.6'

  ec2_instance { 'puppet-agent':
    ensure          => present,
    region          => 'us-west-2',
    image_id        => 'ami-e08efbd0', # RHEL 6.5
    instance_type   => 'm3.medium',
    monitoring      => 'true',
    security_groups => ['puppet'],
    user_data       => template('agent-pe-userdata.erb'),
  }
}
