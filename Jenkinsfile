pipeline{
    agent { dockerfile true}
    tools{
        docker '23.0.3'
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