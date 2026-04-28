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

        stage('SCM - Checkout Code') {
            steps {
                echo 'Cloning code from GitHub...'
                git 'https://github.com/kaushik-industry/MyFirstRepo'
            }
        }

        stage('Pre-check') {
            steps {
                echo 'Validating YAML files...'
                bat 'dir'
            }
        }

        stage('Deploy Tekton Pipeline') {
            steps {
                echo 'Applying Tekton Tasks & Pipeline...'
                bat 'kubectl apply -f SIP_task.yaml'
                bat 'kubectl apply -f GUI_task.yaml'
                bat 'kubectl apply -f API_task.yaml'
                bat 'kubectl apply -f pipeline.yaml'
            }
        }

        stage('Trigger Tekton PipelineRun') {
            steps {
                echo 'Deleting old PipelineRun (if exists)...'
                bat 'kubectl delete pipelinerun sip-gui-api-run --ignore-not-found'

                echo 'Creating new PipelineRun...'
                bat 'kubectl create -f pipelinerun.yaml'
            }
        }

        stage('Verify Execution in Kubernetes') {
            steps {
                echo 'Checking Pods created by Tekton...'
                bat 'kubectl get pods -n tekton-pipelines'
            }
        }

        stage('Pipeline Completed') {
            steps {
                echo 'SUCCESS: Jenkins → Tekton → Kubernetes flow completed'
            }
        }
    }
}
