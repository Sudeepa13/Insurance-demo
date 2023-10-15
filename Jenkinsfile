pipeline {
   agent any
   tools {
      maven 'M2_HOME'
         }
 stage('Checkout') {
            steps {
                timeout(time: 30, unit: 'SECONDS') {
                    git branch: 'master', url: 'https://github.com/Sudeepa13/Insurance-demo.git''
        }
    }
    stage('Build Package') {
    steps {
       sh 'mvn package'
    }
  }
    }
  }
