pipeline {
    agent any
    parameters {
        string(name: 'GREETING', defaultValue: 'Hello', description: 'String test')
        booleanParam(name: 'REPORTELASTIC', defaultValue: true, description: 'Report test results to Elastic')
    }
    environment {
        SERVER_CREDENTIALS = credentials('server-credentials')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                echo "${params.GREETING} World"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the application...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }
}