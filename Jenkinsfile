pipeline {
    agent any
    environment {
        SERVER_CREDENTIALS = credentials('server-credentials')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
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
            }
        }
    }
}