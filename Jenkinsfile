pipeline {
  agent any
    tools {
      maven 'M2_HOME'
    }
    stages{
      stage('Git_checkout'){
        steps {
          sh 'https://github.com/Sudeepa13/Insurance-demo.git'
            } 
      }
      stage('Build Package'){
        steps {
          sh 'mvn clean package'
        }
      }
    }
  }
