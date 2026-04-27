pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/kaushik-industry/MyFirstRepo.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir('FirstProgram') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('FirstProgram') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: "Approve Terraform Apply?"
                dir('FirstProgram') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
