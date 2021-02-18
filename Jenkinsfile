pipeline {
environment {
    registry = "steve1313/dnd-5e-api"
    registryCredential = 'docker'
    }
    agent any
    stages {
        def app
        stage('Build') {
            steps{
                app = docker.build("")
            }
        }
        stage('Publish') {
            steps{
                script {
                    docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
                        app.push("latest")
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