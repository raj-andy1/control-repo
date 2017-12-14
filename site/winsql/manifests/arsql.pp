# /etc/puppetlabs/code/environments/production/site/winsql/manifests/arsql.pp
# Sample code to install MS SQL Server

class winsql::arsql {
  
 include winsql::armount


  sqlserver_instance { 'MSSQLSERVER':
    features  => ['SQL'],
    source  =>  'X:\\',
    sql_sysadmin_accounts => ['myuser'],
    require => Class['winsql::armount']
  }

}
