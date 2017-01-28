# /etc/puppetlabs/code/environments/production/site/win/manifests/winsql.pp
# Sample code to install MSSQLServer

class win::winsql {

  sqlserver_instance{'ARSQLServer':
    features              =>  ['sql'],
    source                =>  'C:\Users\Administrator\Downloads',
    sql_sysadmin_accounts =>  ['mysql']
  }
  sqlserver::database { 'miniandydb':
    instance  =>  'ARSQLServer',
  }
}
