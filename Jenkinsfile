pipeline {
  agent any
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('abdelaziz1996-dockerhub')
  }
  stages {
    stage("build") {
      steps {
        sh 'docker build -t abdelaziz1996/my-app:latest .'
      }
    }
    stage("login") {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage("push") {
      steps {
        sh 'docker push abdelaziz1996/my-app:latest'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
