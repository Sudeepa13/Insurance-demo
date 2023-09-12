pipeline{
  agent any
  tools{
   maven 'MAVEN_HOME'
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

    stage ('HTML report')
    {
      steps{
publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: '/var/lib/jenkins/workspace/Insurance/target/surefire-reports', reportFiles: 'index.html', reportName: 'HTML Report', reportTitles: '', useWrapperFileDirectly: true])
      }
    }

    stage('docker file and image')
          {
            steps{
                 sh 'docker build -t shashikrpet/insure-app:1.0 .'
            }
          }

    stage('Docker image push'){
      steps{
withCredentials([usernameColonPassword(credentialsId: '18ac34d8-c03d-42c0-bf9a-d6a3d37c688a', variable: 'docker')]) {
    sh'docker login -u shashikrpet -u $(docker)
}
        sh 'docker push shashikrpet/insure-app:1.0
      }
    }

    
    
  }
}

    
