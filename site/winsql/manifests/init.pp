# /etc/puppetlabs/code/environments/production/site/winsql/manifests/init.pp


class winsql {
  include winsql::arsql
  include winsql::armount

  Class ['winsql::armount'] -> Class ['winsql::arsql']
}
