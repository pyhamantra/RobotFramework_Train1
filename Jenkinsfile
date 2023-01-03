pipeline {
    agent any
    parameters {
        string(name: 'GREETING', defaultValue: 'Hello', description: 'String test')
        booleanParam(name: 'reportToElastic', defaultValue: true, description: 'Report test results to Elastic')
        booleanParam(name: 'executeTests', defaultValue: true, description: 'Check whether tests will be run')
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
            when {
                expression {
                    params.executeTests
                }
            }
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