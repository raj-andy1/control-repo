# /etc/puppetlabs/code/environments/production/site/profile/manifests/arjenkins.pp
# Sample code to install Jenkins master

class profile::arjenkins {

  class { 'jenkins':
    plugin_hash => {
      'git' => { version => '3.4.1' },
      'github' => { version => '1.27.0' },
      'jackson2-api' => { version => '2.7.3' },
      'git-client' => { version => '2.4.6' },
      'github-api' => { version => '1.86' },
      'token-macro' => { version => '2.1' },
      'display-url-api' => { version => '2.0' },
      'structs' => { version => '1.9'},
      'puppet-enterprise-pipeline' => { version => '1.3.1'},
      'workflow-api' => { version => '2.3' },
      'workflow-cps' => { version => '2.17'},
      'workflow-support' => { version => '2.2' },
      'workflow-basic-steps' => { version => '2.0'},
      'workflow-durable-task-step' => { version =>'2.4'},
      'workflow-scm-step' => { version => '2.6' },
      'workflow-step-api' => { version => '2.9' },
      'plain-credentials' => { version => '1.2' },
      'script-security' => { version => '1.22' },
      'durable-task' => { version => '1.12' },
      'ssh-credentials' => { version => '1.13' },
      'jquery-detached' => { version => '1.21',
        source => 'http://repo.jenkins-ci.org/releases/org/jenkins-ci/ui/jquery-detached/1.2.1/jquery-detached-1.2.1.hpi'},
      'scm-api' => { version => '2.2.0' },
      'ace-editor' => { version => '1.0.1' },
      'mailer' => { version => '1.20' },
      'matrix-project' => { version => '1.11' },
      'junit' => { version => '1.20' },
      'script-security' => { version => '1.29.1' },
    }
  }
}
