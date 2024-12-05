pipeline {
    agent any

    stages {
        stage('git clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Nityapenmatsa/jenkins.git'
            }
        }
        stage('git init'){
            steps{
                sh "terraform init"
            }
        }
        stage('git plan'){
            steps{
                sh "terraform plan"
            }
        }
        stage('git apply'){
            steps{
                sh "terraform apply -auto-approve"
            }
        }
    }
}

