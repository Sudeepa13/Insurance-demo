pipeline {
  agent any
  {
    tools {
      maven 'M2_HOME'
    }
    stages{
      stage('Git_checkout'){
        steps {
          sh 'git branch: 'main', changelog: false, poll: false, url: 'https://github.com/Sudeepa13/Insurance-demo.git'
            }
      }
    }
  }
}
