pipeline {
    agent {
        label 'aws_agent'
    }

    stages {
        stage ('Build environ') {
            steps {
                sh """
                chmod +x environment.sh
                ./environment.sh
                """
            }
        }
    }
}