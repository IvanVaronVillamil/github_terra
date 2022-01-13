pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/IvanVaronVillamil/github_terra', branch: 'main', credentialsId: 'fbf5ce93-3c95-47f4-bc57-72fc149502b2')
      }
    }

    stage('init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('validate') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('plan') {
      steps {
        git(url: 'https://github.com/IvanVaronVillamil/github_terra', branch: 'main', credentialsId: 'fbf5ce93-3c95-47f4-bc57-72fc149502b2')
        sh 'terraform init'
        sh 'terraform plan'
      }
    }

    stage('apply') {
      steps {
        sh 'terraform apply'
      }
    }

  }
}