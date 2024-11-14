pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                cleanWs()
            }
        }

        stage('Cleanup') {
            steps {
                sh 'ls -l'
            }
        }

        // stage('Build and Push') {
        //     steps {
        //         echo 'Building..'
        //         dir('app'){
        //             withCredentials([usernamePassword(credentialsId: 'DockerHubPwd', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
        //                 sh '''
        //                     docker build -t msalim22/todolist .
        //                     docker login -u ${USERNAME} -p ${PASSWORD}
        //                     docker push msalim22/todolist
        //                 '''
        //             }
        //         }
        //     }
        // }
        // stage('Deploy') {
        //     steps {
        //         sshagent(['ssh-key']) {
        //             withCredentials([usernamePassword(credentialsId: 'DockerHubPwd', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
        //                 sh '''
        //                     ssh -tt root@<APP_HOST_VM_IP> -o StrictHostKeyChecking=no "docker pull msalim22/todolist"
        //                     ssh -tt root@<APP_HOST_VM_IP> -o StrictHostKeyChecking=no "docker stop todolist-app || true && docker rm todolist-app || true"
        //                     ssh -tt root@<APP_HOST_VM_IP> -o StrictHostKeyChecking=no "docker run --name todolist-app -d -p 3000:3000 msalim22/todolist"
        //                 '''
        //             }
        //         }
        //     }
        // }
    }
}
