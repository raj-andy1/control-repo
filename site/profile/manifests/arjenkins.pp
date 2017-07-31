# /etc/puppetlabs/code/environments/production/site/profile/manifests/arjenkins.pp
# Sample code to install Jenkins master from scratch

class profile::arjenkins {

  package {"rubygems": ensure => present,}
  package {"git": ensure => present,}
  package {"make": ensure => present,}
  package {"gcc": ensure => present,}
  package {"gcc-c++": ensure => present,}
  package {"libxml2-devel": ensure => present,}
  package {"libxslt-devel": ensure => present,}
  package {"beaker": ensure => present, provider => puppet_gem, require => Package['rubygems']}
  package {"puppet-lint": provider => puppet_gem, require => Package['rubygems']}

  class { 'jenkins':
    plugin_hash => {
      'ace-editor'=> { version => '1.1'},
      'ant'=> { version => '1.5'},
      'antisamy-markup-formatter'=> { version => '1.5'},
      'authentication-tokens'=> { version => '1.3'},
      'bouncycastle-api'=> { version => '2.16.2'},
      'branch-api'=> { version => '2.0.11'},
      'build-timeout'=> { version => '1.18'},
      'cloudbees-folder'=> { version => '6.1.0'},
      'credentials-binding'=> { version => '1.12'},
      'display-url-api'=> { version => '2.0'},
      'docker-commons'=> { version => '1.8'},
      'docker-workflow'=> { version => '1.12'},
      'durable-task'=> { version => '1.14'},
      'email-ext'=> { version => '2.58'},
      'envinject'=> { version => '2.1.3'},
      'envinject-api'=> { version => '1.2'},
      'external-monitor-job'=> { version => '1.7'},
      'git'=> { version => '3.5.0'},
      'git-client'=> { version => '2.5.0'},
      'git-server'=> { version => '1.7'},
      'github'=> { version => '1.27.0'},
      'github-api'=> { version => '1.86'},
      'github-branch-source'=> { version => '2.2.2'},
      'gradle'=> { version => '1.27.1'},
      'handlebars'=> { version => '1.1.1'},
      'hipchat'=> { version => '2.1.1'},
      'icon-shim'=> { version => '2.0.3'},
      'jackson2-api'=> { version => '2.7.3'},
      'javadoc' => { version => '1.4'},
      'jquery-detached'=> { version => '1.2.1'},
      'junit'=> { version => '1.20'},
      'ldap'=> { version => '1.16'},
      'mailer'=> { version => '1.20'},
      'mapdb-api'=> { version => '1.0.9.0'},
      'maven-plugin' => {version => '2.13'},
      'matrix-auth'=> { version => '1.7'},
      'matrix-project'=> { version => '1.11'},
      'momentjs'=> { version => '1.1.1'},
      'pam-auth'=> { version => '1.3'},
      'php-builtin-web-server'=> { version => '0.1'},
      'pipeline-build-step'=> { version => '2.5.1'},
      'pipeline-github-lib'=> { version => '1.0'},
      'pipeline-graph-analysis'=> { version => '1.4'},
      'pipeline-input-step'=> { version => '2.7'},
      'pipeline-milestone-step'=> { version => '1.3.1'},
      'pipeline-model-api'=> { version => '1.1.8'},
      'pipeline-model-declarative-agent'=> { version => '1.1.1'},
      'pipeline-model-definition'=> { version => '1.1.8'},
      'pipeline-model-extensions'=> { version => '1.1.8'},
      'pipeline-rest-api'=> { version => '2.8'},
      'pipeline-stage-tags-metadata'=> { version => '1.1.8'},
      'pipeline-stage-view'=> { version => '2.8'},
      'plain-credentials'=> { version => '1.4'},
      'promoted-builds' => { version => '2.29'},
      'puppet-enterprise-pipeline'=> { version => '1.3.1'},
      'resource-disposer'=> { version => '0.6'},
      'scm-api'=> { version => '2.2.0'},
      'script-security'=> { version => '1.29.1'},
      'ssh-credentials'=> { version => '1.13'},
      'ssh-slaves'=> { version => '1.20'},
      'subversion'=> { version => '2.9'},
      'timestamper'=> { version => '1.8.8'},
      'token-macro'=> { version => '2.1'},
      'windows-slaves'=> { version => '1.3.1'},
      'workflow-aggregator'=> { version => '2.5'},
      'workflow-api'=> { version => '2.19'},
      'workflow-basic-steps'=> { version => '2.6'},
      'workflow-cps'=> { version => '2.36.1'},
      'workflow-cps-global-lib'=> { version => '2.8'},
      'workflow-durable-task-step'=> { version => '2.12'},
      'workflow-job'=> { version => '2.12'},
      'workflow-multibranch'=> { version => '2.16'},
      'workflow-scm-step'=> { version => '2.6'},
      'workflow-step-api'=> { version => '2.12'},
      'workflow-support'=> { version => '2.14'},
      'ws-cleanup'=> { version => '0.34'},
      'pipeline-stage-step'=> { version => '2.2'},
      #'credentials'=> { version => '2.1.14'},
      'structs'=> { version => '1.9'},
    }
  }
}
