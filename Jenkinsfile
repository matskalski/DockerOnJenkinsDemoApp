pipeline{
    agent any
    stages{
        stage("build image"){
            steps{
                sh 'docker build -t docker-on-jenkins-demo-app:1.0.0 .'
            }
        }
    }
}