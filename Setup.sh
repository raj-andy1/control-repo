#!/bin/bash
# This script is used to prep CentOS Virtual Machines to be used with the demo master
# Provide master_ip and master_name relevant to your setup

set -ex
host_name=$(hostname)
master_ip=192.168.0.69
master_name=ar-demomaster01
agent_url="https://"$master_name":8140/packages/current/install.bash"
echo $master_ip $master_name.localdomain  $master_name >> /etc/hosts
echo $(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)  $host_name  >> /etc/hosts
curl -k $agent_url | bash -s extension_requests:pp_role=demo-webserver extension_requests:pp_created_by=AndyR extension_requests:pp_department=TSE
