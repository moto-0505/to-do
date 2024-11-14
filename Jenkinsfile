pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                cleanWs()
            }
        }

        stage('git checkout') {
            steps {
                checkout scm
            }
        }

        stage('listing files') {
            steps {
                sh 'ls -l'
            }
        }
    }
}
