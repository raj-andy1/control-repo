# /etc/puppetlabs/code/environments/production/profile/manifests/artomcatapp.pp
#sample profile to demonstrate tomcat installation and Configurations
class profile::artomcatapp {

  include java

  tomcat::install { '/opt/tomcat':
    source_url => 'https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.77/bin/apache-tomcat-7.0.77.tar.gz',
  }

  tomcat::instance { 'default':
    catalina_home => '/opt/tomcat',
  }

  tomcat::config::server {'/opt/tomcat':
    catalina_base =>  '/opt/tomcat',
    port          =>  '8081'
  }
}
