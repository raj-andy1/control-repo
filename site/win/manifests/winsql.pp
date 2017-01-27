# /etc/puppetlabs/code/environments/production/site/win/manifests/winsql.pp


class win::winsql {
  sqlserver_instance{'MSSQLServer':
    features              =>  ['sql'],
    source                =>  'C:\Users\Administrator\Downloads',
    sql_sysadmin_accounts =>  ['mysql']
  }
  sqlserver::database { 'miniandydb':
    instance  =>  'MSSQLServer',
  }
}
