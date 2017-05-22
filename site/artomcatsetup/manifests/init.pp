#/etc/puppetlabs/code/environments/production/site/artomcatsetup/manifests/init.pp
#sample code to demonstrate tomcat installation and Configurations

class artomcatsetup (
  $tomcatinstalldir = '/opt/tomcat',
  )

{
  include java

  tomcat::install { $tomcatinstalldir:
    source_url => 'http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz',
  }

  tomcat::instance { 'default':
    catalina_home => $tomcatinstalldir,
  }

  tomcat::war {'sample.war':
    catalina_base => $tomcatinstalldir,
    war_source    => 'https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war',
  }
}
