pipeline {
  agent any
  stages {
    stage('Git') {
      steps {
        echo '> Checking out the Git version control ...'
        checkout scm
      }
    }

    stage('Setup') {
      steps {
        echo '> Building the docker images ...'
        sh 'make setup'
      }
    }

    stage('Dev') {
      steps {
        echo '> Testing the docker containers ...'
        sh 'make dev'
      }
    }

    stage('Install') {
      steps {
        echo '> Pushing the docker images ...'
        sh 'make install'
      }
    }

    stage('Build') {
      steps {
        echo '> Destroying the docker artifacts ...'
        sh 'make build'
      }
    }

    stage('Test') {
      steps {
        echo '> Deploying the application images ...'
        sh 'make test'
      }
    }

  }
  options {
    skipDefaultCheckout(true)
  }
}