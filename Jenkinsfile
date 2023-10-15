pipeline{
  agent any
  tools{
   maven 'M2_HOME'
  }
  
  stages{
    stage('checkout git'){
      steps{
          git branch: 'main', url: 'https://github.com/Sudeepa13/Insurance-demo.git'
      }
    }

    stage ('maveen package')
    {
      steps{
      sh 'mvn clean package'
        }
    }
    }
}
