# /etc/puppetlabs/code/environments/production/site/profile/manifests/arjenkins.pp
# Sample code to install Jenkins master

class profile::arjenkins {

  include jenkins

  jenkins::plugin_hash:
    'git' :
      version : '3.4.1'
    'workflow-scm-step' :
      version : '1.14.2'
    'Credentials' :
      version : '2.1.14'
    'structs' :
      version : '1.7'
    'puppet-enterprise-pipeline' :
      version : '1.3.1'
    'workflow-api' :
      version : '2.3'
    'workflow-basic-steps' :
      version : '2.0'
    'workflow-cps' :
      version : '2.17'
    'workflow-durable-task-step' :
      version :'2.4'
    'credentials' :
      version : '1.21'
    'plain-credentials' :
      version : '1.2'
    'script-security' :
      version : '1.22' 
}
