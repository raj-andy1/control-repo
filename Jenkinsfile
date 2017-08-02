node {
    stage ('Checkout Control Repo') {
      checkout scm
    }

    /*stage ('Check Style - Lint') {
      sh 'echo $(find . -type f -name "*.pp" \\( -exec /opt/puppetlabs/puppet/bin/puppet-lint --with-filename {} \\; -o -quit \\) 2>&1 ) | grep -v ERROR'
    }*/

    /*stage ('Check Syntax - Parse') {
      sh 'echo $(find . -type f -name "*.pp" \\( -exec /opt/puppetlabs/bin/puppet parser validate {} \\; -o -quit \\) 2>&1 ) | grep -v Error'
    }*/

    stage('Install Gems') {
      // Run the onceover tests
      sh '''source /usr/local/rvm/scripts/rvm && bundle install --path=.gems --binstubs'''
    }

    stage('Run Onceover Tests') {
      // Run the onceover tests
      try {
        sh '''source /usr/local/rvm/scripts/rvm && ./bin/onceover run spec'''
      } catch (error) {
        junit '.onceover/spec.xml'
        throw error
      }
    }

    stage ('Authorize deployment') {
      puppet.credentials 'pe-deploy-user'
    }

    stage ('Deploy to production') {
      puppet.codeDeploy 'production'
    }

    stage ('Apply production code') {
      puppet.credentials 'pe-orch-user'
    }

    stage ('Deploy change to production') {
     puppet.job 'production', query: 'nodes { catalog_environment = "production" and deactivated is null }'
    }
}
