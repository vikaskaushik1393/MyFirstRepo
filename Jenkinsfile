pipeline {
    agent any
    
//     triggers {
//     cron('H/5 * * * *')
// }

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
          stage('Terraform Apply') {
            steps {
                dir('FirstProgram') {
                    bat 'terraform apply -auto-approve'
                }
            }
        }
                  stage('Terraform Destroy') {
            steps {
                dir('FirstProgram') {
                    bat 'terraform destroy -auto-approve'
                }
            }
        }
    }
}
