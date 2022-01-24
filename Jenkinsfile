def gv

pipeline {
    agent any
    parameters {
        choice(name: 'VERSION', choices: ['1.1.0', '1.2.0', '1.3.0'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description: '')

    }
    stages {
        stage("init") {
            steps {
                script {
                   gv = load "script.groovy" 
                   sh 'docker-compose down'
                   sh 'netstat -tunlp'
                   sh 'npx kill-port 3000 '
                }
            }
        }
        stage("build") {
            steps {
                script {
                    gv.buildApp()
                    sh 'docker-compose -f docker-compose.yaml up -d --build'
                    sh 'sleep 10'
                    echo "========executing Build========"
                }
            }
        }

        stage("test") {
            when {
                expression {
                    params.executeTests
                }
            }
            steps {
                script {
                    gv.testApp()
                    echo 'docker network ls'
                    sh 'docker network ls'
                    sh 'pwd'
                    dir('app'){
                        sh 'ls'
                        sh 'npm install & npm install forever -g'
                        sh 'forever start app.js'
                        sh 'cat app.log'
                        sh 'netstat -tunlp'
                    
                    }
                    
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    gv.deployApp()
                    echo "======== App is read to go! ========"
                }                                  
            }
        }
    }   
}