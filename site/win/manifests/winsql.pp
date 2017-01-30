# /etc/puppetlabs/code/environments/production/site/win/manifests/winsql.pp
# Sample code to install MSSQLServer

class win::winsql {

  sqlserver_instance{'ARSQLServer':
    ensure                =>  'present',
    features              =>  ['SQL'],
    source                =>  'C:\Users\Administrator\Downloads',
    sql_sysadmin_accounts =>  ['mysql']
  }

  sqlserver::config {'ARSQLServer':
    admin_user =>  'andyr',
    admin_pass =>  'MyP@ssword',

  }

  sqlserver::database { 'miniandydb':
    instance  =>  'ARSQLServer',
  }
}
