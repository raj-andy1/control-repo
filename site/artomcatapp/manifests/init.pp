#/etc/puppetlabs/code/environments/production/site/ar-tomcatapp/manifests/init.pp
#sample code to demonstrate tomcat installation and Configurations

class artomcatapp {

  include java

  tomcat::install { '/yah/tomcat':
    source_url => 'https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz',
  }

  tomcat::instance { 'default':
    catalina_home => '/yah/tomcat',
  }

  tomcat::war {'sample.war':
    catalina_base => '/yah/tomcat',
    war_source    => 'https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war',
  }
}
