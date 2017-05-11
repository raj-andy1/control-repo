# /etc/puppetlabs/code/environments/production/profile/manifests/ar-tomcatapp.pp
#sample profile to demonstrate tomcat installation and Configurations

tomcat::install { '/opt/tomcat':
  source_url => 'https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.x/bin/apache-tomcat-7.0.x.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}

tomcat::config::server {'/opt/tomcat':
  catalina_base =>  '/opt/tomcat',
  port          =>  '8081'
}
