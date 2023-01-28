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
        stage ('Setup gunicorn service') {
            steps {
                sh """
                chmod +x gunicorn.sh
                ./gunicorn.sh"""
            }
        }
    }
}