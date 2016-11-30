# Sample setup script to prep demo agent instances
#!/bin/bash

set -ex
host_name=$(hostname)
master_ip=
master_name=master4
agent_url="https://"$master_name".localdomain:8140/packages/current/install.bash"
echo $master_ip $master_name.localdomain  $master_name
echo 127.0.0.1  $host_name
curl -k $agent_url | sudo bash
