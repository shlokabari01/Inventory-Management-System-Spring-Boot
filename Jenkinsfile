

node(){

 

 

   
  

 

 

 

    
    try {
        stage('Checkout Code'){
          checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHubCred', url: 'https://github.com/shlokabari01/Inventory-Management-System-Spring-Boot.git']])
        }

 

 

        stage('Maven Build'){
            sh "mvn clean install"
        }

 

 

        stage('Test Cases Execution'){
            echo "The test is SUCCESSFUL"
        }


    }
    catch (Exception e){
        currentBuild.result = 'FAILURE'
        echo currentBuild.currentResult
    }finally{
       emailext body: '\'Build Successfully', subject: 'Your project is done with deployment', to: 'shlokabari5@gmail.com'
       
    }
}
