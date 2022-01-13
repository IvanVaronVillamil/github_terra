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
        sh 'sh label: \'\', script: \'terraform validate\''
      }
    }

    stage('apply') {
      steps {
        sh 'sh label: \'\', script: \'terraform apply --auto-approve\''
      }
    }

  }
}