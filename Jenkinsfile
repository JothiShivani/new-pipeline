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
                bat 'dir'  // This will list the files in the current directory
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'C:\\Users\\mathanj\\terraform\\terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'C:\\Users\\mathanj\\terraform\\terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'C:\\Users\\mathanj\\terraform\\terraform apply -auto-approve'
            }
        }
    }
}
