pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull code from Git repository
                git branch: 'main',
                    url: 'https://github.com/simzrupasingha-afk/msc-git-test.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t java-test .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    bat 'docker run --rm java-test'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}