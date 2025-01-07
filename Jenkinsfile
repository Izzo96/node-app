pipeline {
  agent {
    docker {
      image 'node:23.5.0-bullseye'
    }
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('abdelaziz1996-dockerhub')
  }
  stages {
    stage("build") {
      steps {
        sh 'node --version'
      }
    }
  }
}
