pipeline{
    
    agent any
    
    tools{
        maven 'maven3.8'
    }
    
    stages{
        
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/BilalHaiderRizvi/devops-automation']])
                bat 'mvn clean install'
            }
        }
        
        stage('Build Docker Image'){
            steps{
                script{
                    bat 'docker build -t haiderbilal/devops-integration .'
                }
            }
        }
        
        stage('Push Image To DockerHub'){
             steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    bat 'docker login -u %DOCKER_USERNAME% -p %DOCKER_PASSWORD%'
                }
                bat 'docker push haiderbilal/devops-integration:latest'
        
            }
        }
    }
}
