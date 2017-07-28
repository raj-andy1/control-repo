node {
    stage ('Checkout Control Repo') {
      checkout scm
    }

    stage ('Check Style - Lint') {
      sh 'echo $(find . -type f -name "*.pp" \\( -exec /opt/puppetlabs/puppet/bin/puppet-lint --with-filename {} \\; -o -quit \\) 2>&1 ) | grep -v ERROR'
    }

    stage ('Check Syntax - Parse') {
      sh 'echo $(find . -type f -name "*.pp" \\( -exec /opt/puppetlabs/bin/puppet parser validate {} \\; -o -quit \\) 2>&1 ) | grep -v Error'
    }

    stage ('Check Compilation - Rspec') {
    }

    stage ('Check With Fact Data - Onceover') {
    }

    stage ('Promote to production'){
    promote from: 'test01', to: 'production'
    }

    stage ('Authorize deployment') {
      puppet.credentials 'pe-deploy-user'
    }

    stage ('Deploy to production') {
      puppet.codeDeploy 'production'
    }

    stage ('Provision Test Node') {
    }

<<<<<<< HEAD
    stage ('Authorize Orcehstration') {
      puppet.credentials 'pe-orch-user'
    }

=======
>>>>>>> production
    stage ('Deploy change to production') {
     puppet.job 'production', query: 'nodes { catalog_environment = "production" }'
    }
}
