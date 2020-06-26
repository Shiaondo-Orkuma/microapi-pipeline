pipeline {
    agent any
 
    options {
        skipDefaultCheckout(true)
    }
 
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
                sh 'make -sC setup'
            }
        }
        stage('Dev') {
            steps {
                echo '> Testing the docker containers ...'
                sh 'make -sC dev'
            }
        }
        stage('Install') {
            steps {
                echo '> Pushing the docker images ...'
                sh 'make -sC install'
            }
        }
        stage('Build') {
            steps {
                echo '> Destroying the docker artifacts ...'
                sh 'make -sC build'
            }
        }
        stage('Test') {
            steps {
                echo '> Deploying the application images ...'
                sh 'make -sC test'
            }
        }
    }
}