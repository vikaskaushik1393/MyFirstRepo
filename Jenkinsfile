pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                dir('FirstProgram') {
                    bat 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('FirstProgram') {
                    bat 'terraform plan'
                }
            }
        }
          stage('Terraform apply') {
            steps {
                dir('FirstProgram') {
                    bat 'terraform apply --auto-approve'
                }
            }
        }
    }
}
