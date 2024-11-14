pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                cleanWs()
            }
        }

        stage('listing files') {
            steps {
                sh 'ls -l'
            }
        }
    }
}
