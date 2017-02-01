# /etc/puppetlabs/code/environments/production/site/profile/manifests/windb.pp
# Sample code to install MS SQL Server and setup a sample db

class profile::windb {
  include winsql::armount
}
