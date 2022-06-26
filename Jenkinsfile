pipeline{
    agent any
    stages{
        stage('clone repo'){
            steps{
                checkout scm 
            }
        }

        stage('Build image'){
            steps{
                echo 'build stage in progress ...'
                script{
                    app = docker.build("scinet0786/background_api","./pushdockerimage/")
                }
            }
        }

        stage('Docker push image'){
            steps{
                script{
                    docker.withRegistry("https://registry.hub.docker.com","docker"){
                        app.push("${env.BUILD_NUMBER}")
                    }
                }
            }
        }
    }
}