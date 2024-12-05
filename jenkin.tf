pipeline {


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
    }
}

