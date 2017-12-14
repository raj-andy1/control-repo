# /etc/puppetlabs/code/environments/production/site/winsql/manifests/init.pp


class winsql {
  sqlserver_instance { 'MSSQLSERVER':
    features  => ['SQL'],
    source  =>  'X:\',
    require => Class['winsql::armount'],
    sql_sysadmin_accounts => ['myuser'],
  }
}
