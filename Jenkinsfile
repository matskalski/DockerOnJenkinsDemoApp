pipeline{
    agent { dokerfile true}
    stages{
        stage("test"){
            steps{
                sh '''
                    node --version
                '''
            }
        }
    }
}