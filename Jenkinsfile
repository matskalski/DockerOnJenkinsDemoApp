pipeline{
    agent { dockerfile true}
    tools{
        docker
    }
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