
pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                cleanWs()
            }
        }

        stage('Clone Git Repo') {
            steps {
                checkout scm
            }
        }

        stage('Listing files') {
            steps {
                sh 'ls -l'
            }
        }
    }
}
