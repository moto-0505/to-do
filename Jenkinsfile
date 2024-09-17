pipeline {
    agent any

    stages {
        stage('Cleanup') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                dir('app'){
                    sh '''
                        docker build -t msalim22/todolist .'
                    '''
                }
            }
        }
        // stage('Deploy') {
        //     steps {
        //         sshagent(['ssh-key']) {
        //             sh 'pwd'
        //             sh 'scp -o StrictHostKeyChecking=no artifact.zip root@3.96.152.145:/var/www/html/'
        //             sh 'ssh -tt root@3.96.152.145 -o StrictHostKeyChecking=no "cd /var/www/html/; unzip -o artifact.zip; rm artifact.zip"'
        //         }
        //     }
        // }
    }
}
