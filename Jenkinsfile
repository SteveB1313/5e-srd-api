pipeline {
    agent any
    stages {
        stage('Verify branch') {
            steps {
                echo "$GIT_BRANCH"
            }
        }
        stage('Build') {
            steps{
                sh 'docker images -a'
                sh 'docker build -t steve1313/dnd-5e-api:latest .'
                sh 'docker images -a' 
            }
        }
        stage('Test') {
            steps{
                script {
                    sh 'docker-compose up -d'
                    sh './test-container.sh'
                    }
                
            }
        }
        stage('Cleaning up') {
            steps{
                sh "docker-compose down"
                sh "docker rmi steve1313/dnd-5e-api:latest"
            }
        }
    }
    post {
            success {
                echo "App started successfully"
            }
            failure {
                echo "App failed to start"
                }
        }
}