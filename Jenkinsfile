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

        stage('Build and Push') {
            steps {
                echo 'Building..'
                dir('app'){
                    withCredentials([usernamePassword(credentialsId: 'dockerhub-auth', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh '''
                            docker build -t msalim22/todo-list-app .
                            docker images
                            docker login -u ${USERNAME} -p ${PASSWORD}
                            docker push msalim22/todo-list-app
                        '''
                    }
                }
            }
        }
    }
}
