# ec2_publicip.rb
#
Facter.add("ec2_publicip") do
  confine kernel: 'Linux'
    setcode "/usr/bin/curl -s http://169.254.169.254/latest/meta-data/public-ipv4"
    end
