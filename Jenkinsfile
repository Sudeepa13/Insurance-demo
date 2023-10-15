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

    stage ('maven package')
    {
      steps{
      sh 'mvn clean package'
        }
    }
    stage ('Docker Build'){
      steps{
        sh 'docker build -t sudeedockeracc/insurance:1 .'
      }
    }
    stage ('Docker Image Push'){
      steps{
        withCredentials([usernamePassword(credentialsId: 'dockerid', passwordVariable: 'dockerpwd', usernameVariable: 'dockerusr')]) {
        sh 'docker login -u ${dockerusr} -p ${dockerpwd}'
}
        sh 'docker push sudeedockeracc/insurance:1'
      }
    }
    stage ('Deploy'){
      steps{
        ansiblePlaybook credentialsId: 'ansibleid', disableHostKeyChecking: true, playbook: 'deploy.yml'

      }
    }
    
}
}
