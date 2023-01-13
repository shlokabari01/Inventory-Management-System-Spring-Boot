peline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/<username>/<repository>.git', branch: '<branch>'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
         stage('Scanning'){
               withSonarQubeEnv(credentialsId: '03848b78-138b-412a-b9cc-4fa70b8a1f61')  {
                 sh "${sonarScanner}/bin/sonar-scanner"
	       }
        stage ('Notification'){
		emailext (
		      emailext body: 'Successfully Build', subject: 'Build Status', to: 'barishloka0611@gmail.com'
		    )
	
    }
        }
    }
}

}

