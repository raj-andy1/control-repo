# /etc/puppetlabs/code/environments/production/site/winsql/manifests/init.pp


class winsql {
  sqlserver_instance { 'MSSQLSERVER':
    features  => ['SQL'],
    source  =>  'X:\\',
    sql_sysadmin_accounts => ['myuser'],
    require => Class['winsql::armount'],
  }
}
