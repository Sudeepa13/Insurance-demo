pipeline{
  agent any
  tools{
   maven 'M2_HOME'
  }
  stages{
    stage('checkout git'){
      steps{
          git branch: 'main', url: 'https://github.com/shashikrpet/Insurance.git'
      }
    }

    stage ('maveen package')
    {
      steps{
      sh 'mvn clean package'
        }
    }
    stage(


    
  }
}

    
