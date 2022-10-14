pipeline {
    agent { label 'ltecomm' }
    stages {
        stage('SCM') {
            steps {
                git 'https://github.com/wakaleo/game-of-life.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Archive') {
            steps {
                archive 'gameoflife-web/targets/gameoflife.war'       
            }
        }
    }
}