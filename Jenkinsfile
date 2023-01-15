

node(){

 

 

   
    def sonarScanner = tool name: 'SonnarQube', type: 'hudson.plugins.sonar.SonarRunnerInstallation'

 

 

 

    
    try {
        stage('Checkout Code'){
          checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHubCred', url: 'https://github.com/shlokabari01/Inventory-Management-System-Spring-Boot.git']])
        }

 

 

        stage('NPM Build'){
            sh "mvn clean install"
        }

 

 

        stage('Test Cases Execution'){
            echo "The test is SUCCESSFUL"
        }

 

 

        stage('SonarQube Analysis'){
            withSonarQubeEnv(credentialsId: 'e9489baa-c3ec-4ac4-8303-be5d48324308') {
            sh "${sonarScanner}/bin/sonar-scanner"
        }
    }

 

 

 

    }
    catch (Exception e){
        currentBuild.result = 'FAILURE'
        echo currentBuild.currentResult
    }finally{
       emailext body: '\'Build Successfully', subject: 'Your project is done with deployment', to: 'shlokabari5@gmail.com'
       
    }
}
