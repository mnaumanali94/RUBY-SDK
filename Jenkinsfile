node {
     stage 'Checkout'
        checkout scm

    stage 'Prepare'
        bat 'bundle install --verbose'

    stage 'Test'
        bat 'bundle exec rake'
}