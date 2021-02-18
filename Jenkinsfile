pipeline {
environment {
    registry = "steve1313/dnd-5e-api"
    registryCredential = 'docker'
    dockerImage = ''
    }
    agent any
    stages {
        stage('Build') {
            steps{
                script {
                    sh 'docker build -f "5e-api" -t steve1313/dnd-5e-api:latest'
                }
            }
        }
        stage('Publish') {
            steps{
                script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                    }
                }
            }
        }
        stage('Cleaning up') {
            steps{
                sh "docker rmi steve1313/dnd-5e-api:latest"
            }
        }
    }
}