pipeline {
    agent {
        docker { image 'node:14.15.0-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}