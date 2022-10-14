node('ltecomm') {
    stage('git'){
        git 'https://github.com/wakaleo/game-of-life.git'
    }
    stage('maven') {
        sh 'mvn clean package'
    }
    stage('archive artifacts') {
        archive 'gameoflife-web/targets/gameoflife.war'
    }
}