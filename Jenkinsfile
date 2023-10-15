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
        sh 'docker build -t sudeedocacc/insurance:1 .'
      }
    }
    stage ('Docker Push'){
      steps{
        withCredentials([usernamePassword(credentialsId: 'docid', passwordVariable: 'docker_pwd', usernameVariable: 'docker_usr')]) {
        sh 'docker login -u ${docker_usr} -p ${docker_pwd}'
}
        sh 'docker push sudeedocacc/insurance:1'
      }
    }
}
}
