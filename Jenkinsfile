pipeline{
    agent any
    stages{
        stage('SCM'){
            steps{
                git branch: 'master',
                url: 'git@github.com:akhil-pulluri/spring-rest.git'
            }
        }
        stage('BUILD DOCKER IMAGE AND PUSH'){
            steps{
                sh "docker compose-up ",
                sh "docker push akhilp1468/rest-image:final"
            }
        }
        stage('APPLY KUBERNETES DEPLOYMENT'){
            steps{
                sh "kubectl apply -f k8-deployment.yml"
            }
        }
    }
}