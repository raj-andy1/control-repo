#!/bin/bash

# all our vars we define in .json
#PT_pemaster
#PT_name
#PT_ensure
#PT_image_id
#PT_instance_type
#PT_region
#PT_key_name
#PT_subnets
#PT_security_groups
#PT_iam_role
#PT_pe_role


/opt/puppetlabs/bin/puppet resource ec2_instance $PT_name \
ensure=running \
image_id=$PT_image_id \
instance_type=$PT_instance_type \
subnet=$PT_subnet \
region=$PT_region \
key_name=$PT_key_name \
security_groups="$PT_security_groups"
iam_role="$PT_iam_role"