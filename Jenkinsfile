pipeline {
    agent any
    tools {

    }
    parameters {
        string(name: 'GREETING', defaultValue: 'Hello' description: 'String test')
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
                echo "Using commit ${GIT_COMMIT}"
                echo "Committer ${GIT_COMMITTER_EMAIL}"
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
                // Alternatively use withCredentials and not env wrapper
                withCredentials([
                    userNamePassword(credentials: 'server-credentials', usernameVariable: USER, passwordVariable: PWD)
                ]) {
                    sh('echo Script is run here...')
                }
            }
        }
    }
}