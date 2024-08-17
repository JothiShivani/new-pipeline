pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')  // Add your AWS credentials in Jenkins
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch :'master', url :'https://github.com/JothiShivani/new-pipeline.git'  // Replace with your Git repo URL
            }
        }
          stage('Verify Files') {
            steps {
                sh 'ls -al'  // This will list the files in the current directory
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'C:\\Users\\mathanj\\Downloads\\terraform_1.9.4_windows_386\\terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'C:\\Users\\mathanj\\Downloads\\terraform_1.9.4_windows_386\\terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'C:\\Users\\mathanj\\Downloads\\terraform_1.9.4_windows_386\\terraform apply -auto-approve'
            }
        }
    }
}
