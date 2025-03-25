pipeline{
    agent { dockerfile true}
    stages{
        stage('Initialize'){
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        stage("test"){
            steps{
                sh '''
                    node --version
                '''
            }
        }
    }
}