// pipeline {
//     agent any
    
// //     triggers {
// //     cron('H/5 * * * *')
// // }

//     stages {

//         stage('Checkout') {
//             steps {
//                 checkout scm
//             }
//         }

//         stage('Terraform Init') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform init'
//                 }
//             }
//         }
//        stage('Validate') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform validate'
//         }
//     }
// }

// stage('Lint') {
//     steps {
//         dir('FirstProgram') {
//             bat 'tflint'
//         }
//     }
// }

// stage('Security Scan') {
//     steps {
//         dir('FirstProgram') {
//             bat 'tfsec .'
//         }
//     }
// }
//         stage('Terraform Plan') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform plan'
//                 }
//             }
//         }
//           stage('Terraform Apply') {
//             steps {
//                 dir('FirstProgram') {
//                     bat 'terraform apply -auto-approve'
//                 }
//             }
//         }
//         //           stage('Terraform Destroy') {
//         //     steps {
//         //         dir('FirstProgram') {
//         //             bat 'terraform destroy -auto-approve'
//         //         }
//         //     }
//         // }
//     }
// }

pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/kaushik-industry/MyFirstRepo'
      }
    }

    stage('Run Tekton Pipeline') {
      steps {
        bat 'kubectl apply -f pipelinerun.yaml'
      }
    }
  }
}
