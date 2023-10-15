pipeline {
  agent any
    tools {
      maven 'M2_HOME'
    }
    stages{
      stage('Git_checkout'){
        steps {
          git 'git branch: 'main' url: 'https://github.com/Sudeepa13/Insurance-demo.git''
            } 
      }
      stage('Build Package'){
        steps {
          sh 'mvn clean package'
        }
      }
    }
  }
