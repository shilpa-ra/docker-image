pipeline {
    agent {label 'images'}
      stages {
        stage ('repo') {
            steps {
                git url: 'https://github.com/shilpa-ra/docker-image.git',
                branch: 'main'
            }
        }
        stage ('docker img') {
            steps {
                sh 'sh docker.sh'
            }
        }
      }
}
