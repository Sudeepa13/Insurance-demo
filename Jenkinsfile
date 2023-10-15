pipeline {
   agent any
   tools {
      maven 'M2_HOME'
         }
 stage('Git Checkout') {
            steps {
                    git branch: 'master', url: 'https://github.com/Sudeepa13/Insurance-demo.git'
        }
    }
    stage('Build Package') {
    steps {
       sh 'mvn package'
    }
  }
    }
